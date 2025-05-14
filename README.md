# VeraCrypt Volume Automation 🔐

This project is a simple but effective **batch script** for automating the mounting and dismounting of encrypted VeraCrypt volumes using Windows CMD.

## 🚀 Features

- ✅ Mounts and dismounts encrypted containers via VeraCrypt CLI
- 🔄 Uses a **sentinel file** to decide whether to mount or dismount
- 🔐 Dynamically sets environment variables: `VERAPATH` and `VERAPASS`
- 📋 Includes a **menu-driven interface** for easy interaction

## 🖥️ How It Works

- If a file named `104175546.txt` exists, the script will **dismount** the volume.
- If the file doesn't exist, the script will **mount** the encrypted volume to `X:` using the provided path and password.
- The `-m` flag launches a menu interface to guide users through setting paths and passwords manually.

## 📂 File Structure


