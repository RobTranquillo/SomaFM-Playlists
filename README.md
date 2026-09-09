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
On Linux/macOS, with Python 3 installed:
```sh
./run.sh
```
The script creates a local `venv` if needed, installs the dependencies, and starts
the playlist generator. Broken environments are backed up as `venv.backup.*` and
recreated automatically. Generated playlists are saved in the project's `SomaFM/`
directory, even when the script is launched from another directory. The first run
requires internet access to install dependencies; playlist generation also requires
internet access.

Manual setup:
Works on linux, windows, macos
```
 First git clone this repository and  step into it..

 # create and use a virtual environment in the current directory
 python3 -m venv venv


 # Activate the virtual environment
 
 ## On Linux/macOS:
 source venv/bin/activate
 
 ## On Windows (cmd.exe):
 venv\Scripts\activate.bat
 
 ## On Windows (PowerShell):
 venv\Scripts\Activate.ps1

 # install needed dependencies
 pip install --upgrade pip
 pip install -r requirements.txt
 python3 somafm.py
```
