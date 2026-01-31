#!/usr/bin/liquidsoap

# Setting up the logger
log.stdout.set(true)

# 1. MUSIC SOURCE (Playlist)
# Points to a directory called 'music' in the container
radio = playlist("/music", mode="randomize", reload_mode="watch")

# 2. LIVE SOURCE (Input from Mixxx)
# The 'harbor' allows an external source (Mixxx) to connect to port 8005
# User/Pass must match what is set here. 
# "mount" is where Mixxx should stream to (e.g., /live)
live = input.harbor("live", port=8005, password="hackme")

# 3. FALLBACK LOGIC
# If 'live' is available, play it. Otherwise, play 'radio' (playlist).
# mksafe ensures it outputs silence instead of crashing if files end.
stream = mksafe(fallback(track_sensitive=false, [live, radio]))

# 4. OUTPUT TO ICECAST
# Sends the stream to the Icecast server defined in icecast.xml
output.icecast(%mp3, 
  host = "icecast", port = 8000, 
  password = "hackme", mount = "/radiob", 
  name="RadioB", description="Independent Balkan Radio", 
  stream)
