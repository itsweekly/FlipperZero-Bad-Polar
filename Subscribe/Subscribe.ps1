Add-Type -AssemblyName System.Windows.Forms

# 
$channelUrl = "https://www.youtube.com/channel/UCuumadKTpOsjGivNBU9Eq7g"
$youtubeUrl = -join($channelUrl,"?sub_confirmation=1")
Start-Process "chrome.exe" $youtubeUrl

Start-Sleep -Seconds 3
[System.Windows.Forms.SendKeys]::SendWait('{TAB}'*2)
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}')
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait('%{F4}')

# 
Start-Process "chrome.exe"

# 
Start-Sleep -Seconds 3

# 
[System.Windows.Forms.SendKeys]::SendWait("^{L}")

# 
[System.Windows.Forms.SendKeys]::SendWait("chrome://settings/clearBrowserData")
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

# Wait for the page to load
Start-Sleep -Seconds 3

# 
[System.Windows.Forms.SendKeys]::SendWait('{TAB}'*9)
[System.Windows.Forms.SendKeys]::SendWait('{ENTER}')

Start-Sleep -Seconds 1

[System.Windows.Forms.SendKeys]::SendWait('%{F4}')

#
Start-Sleep -Seconds 2
Remove-Item -Path $PSCommandPath -Force

