# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "centos-docker" do |node|
    node.vm.box = "centos/7"
    node.vm.hostname = "centos-docker"
    node.vm.network :private_network, ip: "192.168.100.10"
    config.vm.network :forwarded_port, host: 80, guest: 80
    config.vm.network :forwarded_port, host: 443, guest: 443
    config.vm.network :forwarded_port, host: 3000, guest: 3000
    config.vm.network :forwarded_port, host: 3306, guest: 3306
    config.vm.network :forwarded_port, host: 5000, guest: 5000
    config.vm.network :forwarded_port, host: 5060, guest: 5060, protocol: "tcp"
    config.vm.network :forwarded_port, host: 5060, guest: 5060, protocol: "udp"
    config.vm.network :forwarded_port, host: 7077, guest: 7077
    config.vm.network :forwarded_port, host: 8020, guest: 7020
    config.vm.network :forwarded_port, host: 8080, guest: 8080
    config.vm.network :forwarded_port, host: 8081, guest: 8081
    config.vm.network :forwarded_port, host: 8088, guest: 8088
    config.vm.network :forwarded_port, host: 8089, guest: 8089
    config.vm.network :forwarded_port, host: 8000, guest: 8000
    config.vm.network :forwarded_port, host: 8443, guest: 8443
    config.vm.network :forwarded_port, host: 9005, guest: 9005
    config.vm.network :forwarded_port, host: 50070, guest: 50070
    config.vm.network :forwarded_port, host: 50080, guest: 50080
    config.vm.network :forwarded_port, host: 50081, guest: 50081
    config.vm.network :forwarded_port, host: 50088, guest: 50088
    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.synced_folder "../share", "/home/vagrant/share", id: "vagrant", :nfs => true, :mount_options => ['nolock,vers=3,udp']
  end
end
      
