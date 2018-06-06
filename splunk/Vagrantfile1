# -*- mode: ruby -*-
# vi: set ft=ruby :

# See README.md for details

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu-xenial-base"

  config.vm.define "forwarder" do |forwarder|
  
    forwarder.vm.hostname = "forwarder1"
  
    forwarder.vm.network "private_network", ip: "172.31.0.202"
  
  end
  
end
