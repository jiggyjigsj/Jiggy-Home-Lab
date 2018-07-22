name 'base_os'

description 'Role file for base operating system server'

run_list 'recipe[firewalld::disable]',
         'recipe[chef-updater]'
#         'recipe[oh-my-zsh]'

default_attributes()
