# to list rules 
sudo iptables -L
# rule to drop icmp request pacKets
sudo iptables -A INPUT -p icmp --icmp-type echo-request -j DROP
# rule to block incoming SSH connection
sudo iptables -A INPUT -p tcp --dport 22 -s clientIP -j DROP
# rule to block a website
sudo iptables -A OUTPUT -p tcp -d websiteIP -j REJECT
# rule to block incoming TCP packets from the specified IP address to port 80 (HTTP)
sudo iptables -A INPUT -p tcp --dport 80 -s 192.168.0.50 -j DROP
# Deleting rules
sudo iptables -D INPUT (specifiy rule no) 
