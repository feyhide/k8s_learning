echo "INSTALLING KUBECTL"

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "DOWNLOADING CHECKSUM"

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "VALIDATING CHECKSUM"

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl

echo "KUBECTL INSTALLED VERSION:"
kubectl version --client

