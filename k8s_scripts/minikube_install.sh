#!/bin/bash
set -e

echo "[*] Updating package lists..."
sudo apt update

echo "[*] Installing required dependencies..."
sudo apt install -y curl wget apt-transport-https ca-certificates gnupg lsb-release

echo "[*] Downloading Minikube binary..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

echo "[*] Making it executable..."
chmod +x minikube

echo "[*] Moving it to /usr/local/bin..."
sudo mv minikube /usr/local/bin/

echo "[✓] Minikube installed successfully."

echo "[*] Verifying version..."
minikube version


