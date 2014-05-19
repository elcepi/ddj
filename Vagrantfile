# -*- mode: ruby -*-
# vi: set ft=ruby :

script = <<SCRIPT
    echo "Installing RVM"
    curl -sSL https://get.rvm.io | bash -s stable
    PATH="$PATH:$HOME/.rvm/bin"
    rvm install ruby-2.1.1
SCRIPT

name = 'ddj'
ip = '192.168.33.14'
Vagrant.configure('2') do |vagrant_config|

  vagrant_config.vm.define name do |config|

    config.vm.hostname = name

    # Every Vagrant virtual environment reuses a base box
    config.vm.box = 'vagrantup.com.precise64'

    # The url from where the 'config.vm.box' box will be fetched if it doesn't already exist on the user's system.
    config.vm.box_url = 'http://files.vagrantup.com/precise64.box'

    config.vm.provider :virtualbox do |vb|
      vb.customize ['modifyvm', :id, '--memory', 4096]
    end

    # installs mysql, etc...
    config.vm.provision :shell, :path => 'vagrant.sh'

    # install rvm
    config.vm.provision :shell, :privileged => false, inline: script

    config.vm.network(:private_network, ip: ip)

  end #vagrant_config.vm.define

end #Vagrant::Config.run
