# Fmap
Little script to automate in a fast manner full TCP & UDP port scanning with Nmap.

Equivalent of the TCP part in two lines:
```
h=TARGET-IP
echo 'host='$h; nmap -sT -T4 -Pn $h -oN nm_out.txt; p=$(grep -oP "[0-9]+?(?=\/)" nm_out.txt |tr '\n' ','); echo 'ports='"$p"; nmap -A -T4 -p "$p" $h -oN result_${h}_TCP.txt ; rm nm_out.txt
```
