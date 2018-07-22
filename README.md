# Jiggy-Home-Lab

Something i am trying to put together:)

## Things I am trying to achieve or have done

* Firewall server (put all ESXi servers behind firewall) - With wifi capability
* Puppet server and agent infrastructure.
* Windows Domain Server

## Possible Projects

* Chef Server and Clients
  * VPN Server
  * DNS Server
  * Proxy Server

## Folders

### chef.jiggy.com: Contains folders related to chef server

* berkshelf
  * Berkshelf: Meant for all servers
* cookbooks
  * Jiggy-proxy: Cookbook to build out my proxy server with ssl enable
* databags
* environment
  * base_os_environment.rb: Environment file for all servers
* roles
  * base_os.rb: Role file for all servers
  * plex.rb: Role to build out plex server
  * proxy.eb: Role to build out reverse proxy server

### Documents: Contains work plans and do documents I found useful

### Networking: Networking diagram for my home lab.
