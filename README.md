# SomaFM Playlists
Get all somafm.com channels and creates m3u playlists for each station

# now with Sonata support
you can generate entrys for your Sonata config file (commonly: ~/.config/sonata/sonatarc)

feature activation:
- generateSonataConfig = True

extend your existing streams list
- sonataConfigIterator = 13   #number of the next station in your config file (starts with zero)

# requirements
- python3
- python3 -> requests
- python3 -> os

# how to run
Works on linux, windows, macos
```
 First git clone this repository and  step into it..

 # create and use a virtual environment in the current directory
 python3 -m venv venv

 # activate the virtual environment
 # On Linux/macOS:
 source venv/bin/activate

 # On Windows (cmd.exe):
 venv\Scripts\activate.bat
 # On Windows (PowerShell):
 venv\Scripts\Activate.ps1

 # install needed dependencies
 pip install -r requirements.txt
 python3 somafm.py
```
