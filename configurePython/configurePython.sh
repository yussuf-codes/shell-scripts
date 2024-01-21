sudo apt update
sudo apt install python3 -y
python3 ./get_python3_minor_version.py
minor_version=$(< ./python3_minor_version.txt)
rm ./python3_minor_version.txt
sudo apt install python3.$minor_version-venv -y
