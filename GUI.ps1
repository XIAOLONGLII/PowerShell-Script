[void] [refelction.assembly]::LoadWIthPartialName("System.Windows.Forms")
$form = new-object Windows.Forms.Form
$form.Text = "Garan---IT Team"

$button = new-object Windows.Forms.Button

$button.text="Jose,Mark,Xiao!"


$button.Dock="fill"

$button.add_click({$form.close()})

$form.controls.add($button)

$form.Add_Shown({$form.Activate()})

$form.ShowDialog()