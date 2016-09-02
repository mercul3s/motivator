## Motivator
I work from home, so it's easy for me to forget to take breaks while I'm working - there is very little opportunity for watercooler chat, and my twice daily bike commute has been nonesxistent for the past several years. Motivator is a super simple bash script for yelling at me to get up and move around while I'm at my computer. Every half hour, a random mac voice tells me to do a random activity from a list of simple exercises.

To use this plist file, edit the string (name), and save it to ~/Library/LaunchAgents. Add the voices.sh file somewhere in your path, and edit the plist to reflect tht path:
```
  <key>ProgramArguments</key>
  <array>
    <string>/path/goes/here/motivator/voices.sh</string>
  </array>
```
Make sure the plist is owned by root. To start the plist, enter the following commands:
sudo launchctl load com.motivator.cron.plist
And you're done! The plist will now run autmatically every 30 minutes, unless you decide
to change the time interval. To change the time interval:
```
<key>StartInterval</key>
  <integer>time in seconds (set to 1800 default)</integer>
```

The script will not run before 9am or after 6pm (my general work and desk hours).
