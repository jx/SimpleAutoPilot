Microsoft Autopilot: https://learn.microsoft.com/en-us/autopilot/overview

Manually register devices with Windows Autopilot: https://learn.microsoft.com/en-us/autopilot/add-devices

The script linked above is 18k worth of Powershell, has several dependencies, and requires the computer to be online at the time of execution.

Instead I have a much shorter script that generates the proper file, and drops it in the same folder where the script is executed from. It eliminates all external dependencies and the online requirement. It's basically 6 lines of Powershell and some comments.