# Generated by Cyber Sandbox Creator 3.1.0
# https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

ansible_groups = {
  "hosts" => ["attacker", "web", "client"], 
  "routers" => ["router"], 
  "ssh" => ["router", "attacker", "web", "client"], 
  "winrm" => [], 
  "ansible" => ["router", "attacker", "web", "client"]
}

Vagrant.configure("2") do |config|

  # Device(router): router
  config.vm.define "router" do |device|
    device.vm.hostname = "router"
    device.vm.box = "munikypo/debian-10"
    device.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 1
    end
    device.vm.synced_folder ".",
      "/vagrant",
      type: "rsync",
      rsync__exclude: ".git/"
    device.vm.network "private_network",
      virtualbox__intnet: "big-broker",
      ip: "172.18.1.1",
      netmask: "255.255.255.0"
    device.vm.network "private_network",
      virtualbox__intnet: "outside-network",
      ip: "10.1.0.1",
      netmask: "255.255.0.0"
    device.vm.network "private_network",
      virtualbox__intnet: "attacker-network",
      ip: "10.10.0.1",
      netmask: "255.255.0.0"
    device.vm.network "private_network",
      virtualbox__intnet: "internet-connection",
      ip: "100.100.100.1",
      netmask: "255.255.255.0"
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "preconfig/playbook.yml"
      ansible.groups = ansible_groups
      ansible.limit = "router"
    end
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.groups = ansible_groups
      ansible.galaxy_role_file = "provisioning/requirements.yml"
      ansible.galaxy_roles_path = "provisioning/roles"
      ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
      ansible.limit = "router"
    end
  end

  # Device(host): attacker
  config.vm.define "attacker" do |device|
    device.vm.hostname = "attacker"
    device.vm.box = "munikypo/kali"
    device.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 1
    end
    device.vm.synced_folder ".",
      "/vagrant",
      type: "rsync",
      rsync__exclude: ".git/"
    device.vm.network "private_network",
      virtualbox__intnet: "attacker-network",
      ip: "10.10.135.83",
      netmask: "255.255.0.0"
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "preconfig/playbook.yml"
      ansible.groups = ansible_groups
      ansible.limit = "attacker"
    end
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.groups = ansible_groups
      ansible.galaxy_role_file = "provisioning/requirements.yml"
      ansible.galaxy_roles_path = "provisioning/roles"
      ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
      ansible.limit = "attacker"
    end
  end

  # Device(host): web
  config.vm.define "web" do |device|
    device.vm.hostname = "web"
    device.vm.box = "munikypo/debian-10"
    device.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 1
    end
    device.vm.synced_folder ".",
      "/vagrant",
      type: "rsync",
      rsync__exclude: ".git/"
    device.vm.network "private_network",
      virtualbox__intnet: "big-broker",
      ip: "172.18.1.5",
      netmask: "255.255.255.0"
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "preconfig/playbook.yml"
      ansible.groups = ansible_groups
      ansible.limit = "web"
    end
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.groups = ansible_groups
      ansible.galaxy_role_file = "provisioning/requirements.yml"
      ansible.galaxy_roles_path = "provisioning/roles"
      ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
      ansible.limit = "web"
    end
  end

  # Device(host): client
  config.vm.define "client" do |device|
    device.vm.hostname = "client"
    device.vm.box = "munikypo/debian-10"
    device.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 1
    end
    device.vm.synced_folder ".",
      "/vagrant",
      type: "rsync",
      rsync__exclude: ".git/"
    device.vm.network "private_network",
      virtualbox__intnet: "outside-network",
      ip: "10.1.17.4",
      netmask: "255.255.0.0"
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "preconfig/playbook.yml"
      ansible.groups = ansible_groups
      ansible.limit = "client"
    end
    device.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "provisioning/playbook.yml"
      ansible.groups = ansible_groups
      ansible.galaxy_role_file = "provisioning/requirements.yml"
      ansible.galaxy_roles_path = "provisioning/roles"
      ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
      ansible.limit = "client"
    end
  end
end
