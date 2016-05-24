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
 #怎么测iptable:
 #1. ssh能登录
 #2. 能够连接redis
 #3. 不能ping通
 #4. 可以使用git