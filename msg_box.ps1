[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | Out-Null
$Reponse = [System.Windows.Forms.MessageBox]::Show("Hello world", "Hello world")
