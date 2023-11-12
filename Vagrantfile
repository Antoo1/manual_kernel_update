# Describe VMs
MACHINES = {
  # VM name "kernel update"
  :"kernel-update" => {
              # VM box
              :box_name => "ubuntu/focal64",
              #Указываем box_version
              :box_version => "v20231003.0.0",
              # VM CPU count
              :cpus => 2,
              # VM RAM size (Mb)
              :memory => 1024
            }
}

Vagrant.configure("2") do |config|
  MACHINES.each do |boxname, boxconfig|
    # Disable shared folders
    config.vm.synced_folder ".", "/vagrant", disabled: true
    # Apply VM config
    config.vm.define boxname do |box|
      # Set VM base box and hostname
      box.vm.box = boxconfig[:box_name]
      box.vm.host_name = boxname.to_s
      # VM resources config
      box.vm.provider "virtualbox" do |v|
        # Set VM RAM size and CPU count
        v.memory = boxconfig[:memory]
        v.cpus = boxconfig[:cpus]
      end
    end
  end
end
