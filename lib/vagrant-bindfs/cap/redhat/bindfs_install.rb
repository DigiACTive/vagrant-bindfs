module VagrantPlugins
  module Bindfs
    module Cap
      module RedHat
        module BindfsInstall

          def self.bindfs_install(machine)
            machine.communicate.tap do |comm|
              if comm.test('grep "CentOS release 6" /etc/centos_version')
                unless comm.test('yum repolist | grep DigiACTive')
                  comm.sudo('wget -o /etc/yum.repos.d/DigiACTive.CentOS.repo http://digiactive.com.au/digiactive-repo/DigiACTive.CentOS.repo')
                end
              end
              comm.sudo('yum -y install bindfs')
            end
          end

        end # BindfsInstall
      end # RedHat
    end # Cap
  end # Bindfs
end # VagrantPlugins
