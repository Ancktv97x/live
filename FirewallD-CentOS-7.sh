# FirewallD CentOS 7
yum install firewalld
systemctl start firewalld
systemctl status firewalld
systemctl is-active firewalld
firewall-cmd --state
systemctl enable firewalld
systemctl is-enabled firewalld
systemctl restart firewalld
firewall-cmd --reload
# systemctl stop firewalld
# systemctl disable firewalld
firewall-cmd --get-zones
firewall-cmd --get-default-zone
firewall-cmd --get-active-zones
firewall-cmd --list-all-zones
firewall-cmd --list-all
firewall-cmd --zone=public --list-services
firewall-cmd --zone=public --list-ports
firewall-cmd --get-services
firewall-cmd --zone=public --add-service=http
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --zone=public --list-services
firewall-cmd --zone=public --add-port=1-9999/tcp
firewall-cmd --zone=public --add-port=1-9999/tcp --permanent
# Add IP Cloudflare
firewall-cmd --permanent --zone=public --add-source=173.245.48.0/20
firewall-cmd --permanent --zone=public --add-source=103.21.244.0/22
firewall-cmd --permanent --zone=public --add-source=103.22.200.0/22
firewall-cmd --permanent --zone=public --add-source=103.31.4.0/22
firewall-cmd --permanent --zone=public --add-source=141.101.64.0/18
firewall-cmd --permanent --zone=public --add-source=108.162.192.0/18
firewall-cmd --permanent --zone=public --add-source=190.93.240.0/20
firewall-cmd --permanent --zone=public --add-source=188.114.96.0/20
firewall-cmd --permanent --zone=public --add-source=197.234.240.0/22
firewall-cmd --permanent --zone=public --add-source=198.41.128.0/17
firewall-cmd --permanent --zone=public --add-source=162.158.0.0/15
firewall-cmd --permanent --zone=public --add-source=104.16.0.0/12
firewall-cmd --permanent --zone=public --add-source=172.64.0.0/13
firewall-cmd --permanent --zone=public --add-source=131.0.72.0/22
firewall-cmd --permanent --zone=public --add-source=2400:cb00::/32
firewall-cmd --permanent --zone=public --add-source=2606:4700::/32
firewall-cmd --permanent --zone=public --add-source=2803:f800::/32
firewall-cmd --permanent --zone=public --add-source=2405:b500::/32
firewall-cmd --permanent --zone=public --add-source=2405:8100::/32
firewall-cmd --permanent --zone=public --add-source=2a06:98c0::/29
firewall-cmd --permanent --zone=public --add-source=2c0f:f248::/32
firewall-cmd --reload
firewall-cmd --zone=public --list-ports
firewall-cmd --zone=public --list-sources