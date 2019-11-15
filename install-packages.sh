#!/usr/bin/env bash

echo "Installing packages"

sudo pacman -Sy --noconfirm \
  bluez \
  bluez-libs \
  bluez-utils \
  vim \
  virt-manager \
  terminator \
  remmina \
  nagstamon \
  chrome \
  fbreader \
  qemu \
  nodejs \
  bash-completion \
  net-tools \
  bind-tools \
  zoom \
  jq \
  perl-net-ldap-server \
  unzip \
  go \
  openssh-askpass \
  tmux \
  virt-viewer \
  vde2 \
  ksshaskpass \
  pinentry \
  rhino \
  x11-ssh-askpass \
  libusb-compat \
  pcsclite \
  ccid \
  icedtea-web \
  bridge-utils \
  openbsd-netcat \
  tcpdump \
  dnsmasq \
  firewalld \
  pycharm-community-edition \
  yubikey-personalization \
  ebtables \
  libvirt \
  qemu-headless \
  rofi \
  sysstat \
  the_silver_searcher \
  ttf-dejavu
  ttf-font-icons \
  ttf-inconsolata \
  xtitle \
  telepathy-glib \
  gnome-keyring\
  libvncserver \
  ocsinventory-agent \
  yay 
	

yay -Sy --noconfirm \
	acroread \
	docker \
	docker-machine-driver-kvm2 \
	git-crypt \
	google-cloud-sdk \
	flameshot \
	#kubectl-bin \
    #    minikube \
	pass \
#	pavucontrol \
	pcsclite \
	powerline-fonts-git \
	pwgen \
	pulseaudio-module-bluetooth \
	python-pipsi \
	siege \
	ranger \
	ssss \
	stress \
	terraform \
	terragrunt-bin \
	tflint \
	ttf-fira-code ttf-symbola \
	stow \
	urxvt-resize-font-git \
	visual-studio-code-bin \
	signal-desktop-bin \
	xclip


#pipsi install ansible
