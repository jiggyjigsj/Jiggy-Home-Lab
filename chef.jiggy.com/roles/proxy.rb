name 'proxy'

description 'Role file for proxy server.'

run_list 'recipe[apt-upgrade-once::default]',
         'recipe[jiggy-proxy]'

default_attributes()
