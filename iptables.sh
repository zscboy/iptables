 #!/bin/bash
 iptables -F
 iptables -A INPUT -p tcp --dport 22022 -j ACCEPT
 iptables -P INPUT DROP
 iptables -P FORWARD DROP
 iptables -P OUTPUT ACCEPT
 iptables -A INPUT -i lo -j ACCEPT
 iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
 service iptables save
 iptables -L -v
 #��ô��iptable:
 #1. ssh�ܵ�¼
 #2. �ܹ�����redis
 #3. ����pingͨ
 #4. ����ʹ��git