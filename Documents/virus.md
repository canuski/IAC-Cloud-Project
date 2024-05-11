Script documentation
====================
This script is designed to perform virus scans on files and directories using ClamAV and send the results to a Telegram chat.

Installation
------------
1. Install ClamAV ```sudo apt install clamav```.
2. Install required Python packages: ```pip install python-telegram-bot python-dotenv asyncio```.
3. Set up a Telegram bot and obtain the bot token and chat ID. Add these into a .env file with the following variable names: ```TELEGRAM_BOT_TOKEN=<-your-token->``` and ```TELEGRAM_CHAT_ID=<-your- channel-id->```.

Usage
-------------
Im planning to add a feature that on the startup of the cloud server the script automaticlly starts and scans the files. If you're using this without a cloud server, and just want the script, run the script with `python3 <script-name>`. **Make sure to add the files in the correct directory specified in the code.**

Code Explanation
----------------
The main script `virus_scan_script.py` is responsible for initiating the scan process. It calls the `scan_directory()` function from `telegram_sender.py` to send a message with the info from the scan. It scan files and directories recursively.

Function documentation
----------------------
##### `scan_file(file_name)`
Scans a single file for viruses using ClamAV.
- `file_name`: Path to the file to be scanned.

##### `scan_directory(directory)`
Recursively scans a directory for viruses using ClamAV.
- `directory`: Path to the directory to be scanned.

##### `send_telegram_msg(msg)`
Sends a message to a Telegram chat.
- `msg`: The message to be sent.

Testing
-------
To test the scripts, you can create mock files and directories containing known virus signatures and ensure that the scripts detect them properly.

Notes for self
--------------
- sudo apt install clamav-daemon
- sudo systemctl start clamav-daemon ==always!
- clamd_socket = "/var/run/clamav/clamd.ctl" ==in python code!
- sudo snap install docker
- sudo docker build -t scripts .
- sudo docker run -d scripts
- sudo docker compose up -d

Problems
-------------
1. Requiments.txt, dotenv gives error
