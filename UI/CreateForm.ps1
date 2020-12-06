# Init PowerShell Gui
Add-Type -AssemblyName System.Windows.Forms
# Create a new form
$EQSwapperForm = New-Object system.Windows.Forms.Form
# Define the size, title and background color
$EQSwapperForm.ClientSize = '450,300'
$EQSwapperForm.text = "EQ-Swapper"
$EQSwapperForm.BackColor = "#ffffff"
# Create a Title for our form. We will use a label for it.
$Titel = New-Object system.Windows.Forms.Label
# The content of the label
$Titel.text = "Swap EQ configuration"
# Make sure the label is sized the height and length of the content
$Titel.AutoSize = $true
# Define the minial width and height (not nessary with autosize true)
$Titel.width = 500
$Titel.height = 10
# Position the element
$Titel.location = New-Object System.Drawing.Point(0, 0)
# Define the font type and size
$Titel.Font = 'Microsoft Sans Serif,13'

$ListView = New-Object system.windows.Forms.ListView
$ListView.View = "Details"
$ListView.Text = "ListView"
$ListView.ForeColor = "#46a3ff"
$ListView.Font = "Calibri,16"
$ListView.Width = 450
$ListView.Height = 300
$ListView.location = new-object system.drawing.point(0, 30)
$ListView.Columns.Add("Number")
$ListView.Columns.Add("Headphone")

$item1 = New-Object System.Windows.Forms.ListViewItem('0')
$item1.SubItems.Add('John')

$item2 = New-Object System.Windows.Forms.ListViewItem('1')
$item2.SubItems.Add('Jane')

$ListView.Items.AddRange(($item1, $item2))

$loadHeadphoneButton = New-Object system.Windows.Forms.Button
$loadHeadphoneButton.BackColor = "#a4ba67"
$loadHeadphoneButton.text = "Load headphone configuration"
$loadHeadphoneButton.width = 450
$loadHeadphoneButton.height = 50
$loadHeadphoneButton.location = New-Object System.Drawing.Point(0, 250)
$loadHeadphoneButton.Font = 'Microsoft Sans Serif, 10'
$loadHeadphoneButton.ForeColor = "#ffffff"

# ADD OTHER ELEMENTS ABOVE THIS LINE
# Add the elements to the form
$EQSwapperForm.controls.AddRange(@($Titel, $loadHeadphoneButton, $ListView))
# THIS SHOULD BE AT THE END OF YOUR SCRIPT FOR NOW
# Display the form
[void]$EQSwapperForm.ShowDialog()
