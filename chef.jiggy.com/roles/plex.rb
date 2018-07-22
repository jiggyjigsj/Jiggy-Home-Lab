name 'plex'

description 'Role file for plex server'

run_list 'role[base_os]',
         'recipe[yum-centos]',
         'recipe[iptables::disabled]',
         'recipe[yum]',
         'recipe[plex]'

default_attributes()
