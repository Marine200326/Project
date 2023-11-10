Vagrant.configure("2") do |config|
    config.vm.define "webserver1" do |webserver1|
      webserver1.vm.box = "ubuntu/trusty64"
      webserver1.vm.network "private_network", type: "static" , ip: "192.168.56.101" 
      webserver1.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true 
      webserver1.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 2
      end 
      webserver1.vm.provision "shell", path: "web_server.sh", privileged: true  
    end
  
    config.vm.define "webserver2" do |webserver2|
      webserver2.vm.box = "ubuntu/trusty64"
      webserver2.vm.network "private_network", type: "static" , ip: "192.168.56.102" 
      webserver2.vm.network :forwarded_port, guest: 80, host: 8081, auto_correct: true 
      webserver2.vm.provider "virtualbox" do |vb|
        vb.memory = 1024
        vb.cpus = 2
      end 
      webserver2.vm.provision "shell", path: "web_server.sh", privileged: true 
    end 
  end
  
  #   config.vm.define "mysql" do |mysql|
  #     mysql.vm.box = "ubuntu/trusty64"
  #     mysql.vm.network "private_network", type: "static" , ip: "192.168.10.2"
  #     mysql.vm.provider "virtualbox" do |vb|
  #       vb.memory = 1024
  #       vb.cpus = 2
  #     end
  #   end
  
  #   config.vm.define "loadbalancer" do |loadbalancer|
  #     loadbalancer.vm.box = "ubuntu/trusty64"
  #     loadbalancer.vm.network "private_network", type: "static" , ip: "192.168.10.3"
  #     loadbalancer.vm.provider "virtualbox" do |vb|
  #       vb.memory = 1024
  #       vb.cpus = 2
  #     end
  #   end
  # end 
