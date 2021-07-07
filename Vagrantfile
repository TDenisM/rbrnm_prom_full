# -*- mode: ruby -*-
# vi: set ft=ruby :

#VARS
##RH = "192.168.33.9"
OS = "generic/ubuntu2004"
S1 = "192.168.33.10"
S2 = "192.168.33.11"
S3 = "192.168.33.12"
S4 = "192.168.33.13"

#RH = "192.168.33.12"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  ##config.vm.define "ubuntu19" do |ubuntu19|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  ##ubuntu19.vm.box = "generic/ubuntu1904"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
   config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
     vb.memory = "1024"
     vb.cpus = "2"
   end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  ##  ubuntu19.vm.network "private_network", ip: U19
  ##  ubuntu19.vm.hostname = "u19"
#    balancer.vm.provision "ansible" do |ansible|
#      ansible.playbook = "./playbook/balancer.yml"
#    end
#  config.vm.provision "ansible" do |ansible|
#      ansible.playbook = "./playbook/common.yml"
#      ansible.extra_vars = {
#        "BALANCERIP" => BALANCERIP,
#        "WEB1IP" => WEB1IP,
#        "WEB2IP" => WEB2IP,
#      }
#  end
##  ubuntu19.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
##  ubuntu19.vm.provision "shell", inline: <<-SHELL
##    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
##SHELL
##end

##config.vm.define "redhat" do |redhat|
##  redhat.vm.box = "generic/centos8"
##  redhat.vm.network "private_network", ip: RH
##  redhat.vm.hostname = "rh"
##  redhat.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
##  redhat.vm.provision "shell", inline: <<-SHELL
##    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
##SHELL
##end

config.vm.define "s1" do |s1|
  s1.vm.box = OS
  s1.vm.network "private_network", ip: S1
  s1.vm.hostname = "s1"
#  s1.vm.network "forwarded_port", guest: 9090, host: 9090
#  s1.vm.network "forwarded_port", guest: 9093, host: 9093
  s1.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
  s1.vm.provision "shell", inline: <<-SHELL
    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
SHELL
end

config.vm.define "s2" do |s2|
  s2.vm.box = OS
  s2.vm.network "private_network", ip: S2
  s2.vm.hostname = "s2"
  s2.vm.network "forwarded_port", guest: 9090, host: 9090
  s2.vm.network "forwarded_port", guest: 3000, host: 9093
  s2.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
  s2.vm.provision "shell", inline: <<-SHELL
    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
SHELL
end

#config.vm.define "s3" do |s3|
#  s3.vm.box = OS
#  s3.vm.network "private_network", ip: S3
#  s3.vm.hostname = "s3"
#  s3.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
#  s3.vm.provision "shell", inline: <<-SHELL
#    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
#SHELL
#end

#config.vm.define "s4" do |s4|
#  s4.vm.box = OS
#  s4.vm.network "private_network", ip: S4
#  s4.vm.hostname = "s4"
#  s4.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
#  s4.vm.provision "shell", inline: <<-SHELL
#    cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
#SHELL
#end

end
