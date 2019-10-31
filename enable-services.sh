#!/usr/bin/env bash

echo "enable services on boot"

sudo systemctl enable libvirtd.service --now
sudo systemctl enable virtlogd.service --now
sudo systemctl enable docker --now
sudo systemctl enable pcscd.service --now
sudo systemctl enable ocsinventory-agent.service --now

#sudo virsh net-start minikube-net
#sudo virsh net-autostart minikube-net
