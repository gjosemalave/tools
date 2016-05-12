# tools
ISSUE: Regsvr32 Hack Bypasses Windows AppLocker Protection 
(Regsvr32 can execute VBScript and JScript files via a URL to a remote host)

This tool creates an outbound firewall rule that blocks the regsvr32.exe from opening a file via a URL that can be used to
execute an external script. 

Hopefully Microsoft patches this but in the mean time here is a tool that will help. 
After Microsoft patches this you can run the tool again and remove the firewall rule. 
Sharing is caring! Please share this work! 
If you have any ideas on how to add more to this tool you are more than welcome to. 

Article that goes into detail
http://www.csoonline.com/article/3060242/security/researcher-uses-regsvr32-function-to-bypass-applocker.html

Works in Win7,Win8 and WIn10 on both 32bit and 64 bit systems.

Summary of the tool
https://www.youtube.com/watch?v=_-tXQCjploE

How an attack can be performed
https://youtu.be/t8SpYn5GkHA


Update: 5/10/2016 Microsoft Update

3155533 MS16-051: Cumulative Security update for Internet Explorer: May 10, 2016

3155538 MS16-052: Cumulative Security update for Microsoft Edge: May 10, 2016

3156754 MS16-055: Security update for Microsoft graphics component: May 10, 2016

3156761 MS16-056: Security update for Windows Journal: May 10, 2016

3156987 MS16-057: Security update for Windows shell: May 10, 2016

3154846 MS16-060: Security update for Windows kernel: May 10, 2016

3155520 MS16-061: Security update to RPC: May 10, 2016

3158222 MS16-062: Security update for kernel mode drivers: May 10, 2016

3155527 MS16-064: Security update to Schannel: May 10, 2016

3156757 MS16-065: Security update for the .NET Framework: May 10, 2016

3155451 MS16-066: Security update to virtual secure mode: May 10, 2016

https://support.microsoft.com/en-us/kb/3156421

Please run the app once again to remove the firewall rule as the patch has been done by Microsoft, if you still do not trust Microsoft you can leave the firewall rule. 
