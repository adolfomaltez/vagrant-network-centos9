# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box_check_update = false

  # Server 1
  config.vm.define "server-1" do |srv1|
    srv1.vm.hostname = "server-1"
    srv1.vm.box = "boxomatic/centos-stream-9"
    srv1.vm.network :private_network, ip: "10.0.0.101",
      virtualbox__intnet: "networkB"
    srv1.vm.network :private_network, ip: "192.168.100.1",
      virtualbox__intnet: "networkA1"
    srv1.vm.network :private_network, ip: "192.168.101.1",
      virtualbox__intnet: "networkA2"
    srv1.vm.network :private_network, ip: "192.168.102.1",
      virtualbox__intnet: "networkA3"
    srv1.vm.provision "shell", path: "provision.sh"
   end

  # Server 2  
  config.vm.define "server-2" do |srv2|
    srv2.vm.hostname = "server-2"
    srv2.vm.box = "boxomatic/centos-stream-9"
    srv2.vm.network :private_network, ip: "10.0.0.102",
      virtualbox__intnet: "networkB"
    srv2.vm.network :private_network, ip: "10.100.0.101",
      virtualbox__intnet: "networkC"
    srv2.vm.provision "shell", path: "provision.sh"
   end

  # Server 3  
  config.vm.define "server-3" do |srv3|
    srv3.vm.hostname = "server-3"
    srv3.vm.box = "boxomatic/centos-stream-9"
    srv3.vm.network :private_network, ip: "10.100.0.102",
      virtualbox__intnet: "networkC"
    srv3.vm.network :private_network, ip: "192.168.200.1",
      virtualbox__intnet: "networkD1"
    srv3.vm.network :private_network, ip: "192.168.201.1",
      virtualbox__intnet: "networkD2"
    srv3.vm.network :private_network, ip: "192.168.202.1",
      virtualbox__intnet: "networkD3"
    srv3.vm.provision "shell", path: "provision.sh"
   end

 
  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "2048"
     vb.cpus = 2
  end
end
