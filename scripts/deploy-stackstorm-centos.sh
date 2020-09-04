#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "============================deploy stackstorm============================================================="

vagrant plugin install vagrant-libvirt #The vagrant-libvirt plugin is required when using KVM on Linux
vagrant plugin install vagrant-mutate #Convert vagrant boxes to work with different providers

# https://app.vagrantup.com/centos/boxes/8
vagrant box add "centos/8" --provider=libvirt
vagrant init --template Vagrantfile.provision.bash.erb
vagrant up --provider=libvirt "vg-stackstorm-01"

vagrant box list #veridy installed boxes
virsh list --all #show all running KVM/libvirt VMs



echo "============================deploy stackstorm finished============================================================="
