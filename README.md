# Windows 10 DeBloater
Windows 10's auto-installing bloatware is getting worse with every update. This is an all-in-one program that runs a compilation of registry edits and commands to help de-bloat Windows 10. It's been tested with the Spring 2017 Creators Update, and should work with the Fall Creators Update as well.

--------------------------------------------------------------------------------------------

# How to Run
Download the Win10Debloater.zip file from the lastest release, and extract it anywhere you like. Right-click the file "RUN-AS-ADMIN.bat" and, you guessed it, choose Run as Administrator. Agree to all the registry edits, you can check what each one does first if you like. And that's it!

--------------------------------------------------------------------------------------------

# Explanation of each file
Asking you to run a bunch of registry edits and PowerShell scripts that you downloaded online is obviously suspicious, so here's a description of what each file does. Again, you can easily look at the files yourself to confirm.

* **RUN-AS-ADMIN.bat**  
This is the main file to run. It runs all the other files in the directory, in the proper order.

* **RegistryChanges.reg**  
This file changes two registry values, SilentInstalledAppsEnabled and AllowTelemetry. SilentInstalledAppsEnabled allows Windows 10 to install apps like Facebook or Skype without prompting you and without your permission. AllowTelemetry lets Windows collect data about your machine that they claim "enhances the user experience" and it won't let you turn this off completely. This .reg file sets both of those values to disabled.

* **RemoveBuiltInPrograms.ps1**  
This is a PowerShell script that uninstalls all the bloatware programs that come built in to Windows 10. The full list can be seen in *removed-programs.txt*, but none of these effect normal use and are rarely ever used on a desktop.

* **DisableTelemetryServices.ps1**  
Another PowerShell script, this one disables two telemetry services, *Connected User Experiences* and *dmwappushsvc*. Again, these have no effect on Windows and are only used for data collection.

* **FinishedMessage.vbs**  
Just displays a message telling you the process is completed, nothing fancy.

--------------------------------------------------------------------------------------------

## "I see something that could be done better" or "I have something you should add/remove/modify"
Microsoft is always getting new sponsers and adding new ways to get around a user's settings and install programs/collect data. If you have anything you'd like me to add, just make a merge request and I'll take a look as soon as I can. Or just report it as an issue if you'd rather *I* add it to the script instead.
