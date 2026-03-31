#!/bin/bash

sudo passwd root
sudo dnf upgrade
systemctl daemon-reload
sudo dnf remove libreoffice*
sudo dnf remove gnome-tour
sudo dnf remove gnome-help
sudo dnf remove yelp
sudo dnf remove simple-scan
sudo dnf remove gnome-contacts
sudo dnf autoremove
