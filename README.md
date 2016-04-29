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
http://virusguides.com/regsvr32-hack-bypasses-windows-applocker-protection/

Works in Win7,Win8 and WIn10 on both 32bit and 64 bit systems.
