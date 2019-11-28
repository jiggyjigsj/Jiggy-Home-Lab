# Zabbix Setup

### Ubuntu

Download and install package

```bash
wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-2+bionic_all.deb
sudo dpkg -i zabbix-release_4.0*
sudo apt update
sudo apt install zabbix-agent zabbix-sender
```

Download and update the hostname on configuration file on L150

```bash
sudo wget -O /etc/zabbix/zabbix_agentd.conf https://raw.githubusercontent.com/jjp1023/Jiggy-Home-Lab/master/ubuntu/etc/zabbix/zabbix_agentd.conf
```

Enable and start the zabbix service

```bash
sudo systemctl enable zabbix-agent
sudo systemctl start zabbix-agent
```

Visit http://zabbix.jiggyjigs.me/zabbix/ and add the new host

Login to admin Zabbix server interface, and go to *Configuration* > *Hosts* > *Create host.* Provide the following information:

* *Hostname* of the server to be monitored
* *The visible name* of the server to be monitored.
* Select the group or add a new group for *“Groups”* field.
* IP address
* Zabbix agent service port -default is 10050
