# Hide PowerShell Console
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();
[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
$consolePtr = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($consolePtr, 0)

# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms
# Create a new form
$EQSwapperForm = New-Object system.Windows.Forms.Form
# Define the size, title and background color
$EQSwapperForm.ClientSize = '500,300'
$EQSwapperForm.text = "EQ-Swapper"
$EQSwapperForm.BackColor = "#ffffff"

$ListView = New-Object system.windows.Forms.ListView
$ListView.View = "Details"
$ListView.Text = "ListView"
$ListView.ForeColor = "#46a3ff"
$ListView.Font = "Calibri,16"
$ListView.Width = 500
$ListView.Height = 300
$ListView.location = new-object system.drawing.point(0, 0)
$ListView.Columns.Add("Number")
$ListView.Columns.Add("Headphone")
$ListView.FullRowSelect = $true
$ListView.MultiSelect = $false
$ListView.AutoResizeColumns([System.Windows.Forms.ColumnHeaderAutoResizeStyle]::HeaderSize)
$ListView.HideSelection = $false;
$ListView.Columns[0].Width = 0;

$loadHeadphoneButton = New-Object system.Windows.Forms.Button
$loadHeadphoneButton.BackColor = "#a4ba67"
$loadHeadphoneButton.text = "Load headphones"
$loadHeadphoneButton.width = 500
$loadHeadphoneButton.height = 50
$loadHeadphoneButton.location = New-Object System.Drawing.Point(0, 250)
$loadHeadphoneButton.Font = 'Microsoft Sans Serif, 10'
$loadHeadphoneButton.ForeColor = "#ffffff"
$loadHeadphoneButton.Add_Click( { ButtonGetHeapdhonesAction })

# ADD OTHER ELEMENTS ABOVE THIS LINE
# Add the elements to the form
$ListView.Add_click( { ListViewAction })

$EQSwapperForm.controls.AddRange(@( $loadHeadphoneButton, $setHeadphoneEQButton, $ListView))

# Logic
. (Join-Path (Split-Path $PSscriptroot -Parent) "Code\EQSwapper.ps1")
$count = 0

# Functions
Function ListViewAction {
    foreach ($item in $ListView.SelectedItems) { 
        $selectedHeadphone = $item.SubItems[1].Text
        set-headphone($selectedHeadphone + ".txt")
    }
}

function ButtonGetHeapdhonesAction {
    $headphones = get-headphones
    foreach ($headphone in $headphones) {
        $item = New-Object System.Windows.Forms.ListViewItem($count)
        $item.SubItems.Add($headphone.split('\.')[-2])
        $ListView.Items.AddRange(($item))
        $count = $count + 1
    }
    
}
# THIS SHOULD BE AT THE END OF YOUR SCRIPT FOR NOW
# Display the form
[void]$EQSwapperForm.ShowDialog()