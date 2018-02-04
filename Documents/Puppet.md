# Configuration for Puppet Server
(https://www.itzgeek.com/how-tos/linux/centos-how-tos/how-to-install-puppet-4-x-on-centos-7-rhel-7.html)

## Server Configuration

## Cert list

```bash
/opt/puppetlabs/bin/puppet cert list
```

## Cert signing

```bash
/opt/puppetlabs/bin/puppet cert sign AGENT.FQDN
```

## Remove Cert

```bash
/opt/puppetlabs/bin/puppet cert clean <hostname>
```

## Agent Configuration

### Install Agent

```bash
yum install -y puppet-agent
```

### Modify server configuration

```bash
Content of: /etc/puppetlabs/puppet/puppet.conf

[main]
certname = puppet-server.jiggy.com
server = puppet-server.jiggy.com
environment = production
runinterval = 1h
```

### Starting the agent

```bash
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
```