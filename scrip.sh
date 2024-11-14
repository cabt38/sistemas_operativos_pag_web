#SERVIDOR WEB


iptables -F


#localhost
iptables -A INPUT -i lo -j ACCEPT

#conexiones ya establecidas
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#SSH

iptables -A INPUT -p tcp -s 172.31.17.163 --dport 22   -j ACCEPT

#HTTP
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

#HTTPS
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

#Bloqueo de todos los puertos 
iptables -A INPUT -j DROP

iptables -A OUTPUT -j ACCEPT
