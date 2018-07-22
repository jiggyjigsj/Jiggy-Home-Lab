require 'berkshelf'

name 'base_os_environment'
description 'Environment for all nodes'

raise 'Berkshelf file not found, execute from parent directory' unless File.exist?('../berkshelf/Berksfile.lock')
Berkshelf::Lockfile.from_file('../berkshelf/Berksfile.lock').graph.each do |d|
  cookbook d.name, "= #{d.version}"
end

default_attributes(
  chef_client_updater: {
    version: '14.0.202',
    prevent_downgrade: true
  }
)
