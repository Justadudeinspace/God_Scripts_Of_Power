# !/bin/bash

#
# Description:
# Script For Envoking & Disconnecting From The "adb-server"
#

[Unit]
Description=Android Debug Server Daemon

[Service]
Type=forking
User=root
ExecStart=/usr/bin/adb start-server
ExecStop=/usr/bin/adb kill-server

[Install]
WantedBy=multi-user.target
