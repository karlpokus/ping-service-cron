# ping-service-cron
A simple uptime/ping service tool

# usage
Add to crontab
```bash
[cron] path/to/ping.sh <url> <dir>
```
It curls the url and writes time and server return status to `$DIR/$HOST/$DATE.txt` for easy parsing. Check data folder for an example. Sets server status to x if fail. Connection and operation timeout is set to 5 secs.

# license
MIT
