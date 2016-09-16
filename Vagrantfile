# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end

    config.vm.define :dev do |dev|
      # config.vm.box = "ubuntu/trusty64"
      dev.vm.box = "ubuntu/trusty32"
      dev.vm.synced_folder ".", "/home/esv2"
      # install ansible dependencies
      dev.vm.provision :shell, path: "bootstrap_ansible.sh"
     dev.vm.provision :shell,
       inline: 'PYTHONUNBUFFERED=1 ansible-playbook \
         /home/esv2/esv2.yml \
         -c local'
    end
end
