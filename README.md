# OpenWRT
Some configs and scripts I used in my Asus RT-N56U Router with OpenWRT (Currently running on LEDE 17.01.4).

<h2><strong>Configs</strong></h2>
Located in /etc/config. Explanations to some configs:

<h3>VpnBypass</h3>
CIDR-IPs are for Netflix (adding the Domains only is not enough). Domains to be bypassed are added to /etc/config/dhcp.

<h3>DHCP</h3>
Contains various settings for my home network (like static local IPs for some Devices).
Preset DNS is dns.watch (also had to change it in config/network to take effect)
Some domains which are being tunneled outside the VPN for faster speed.

<h3>wireless</h3>
I played around with those values to reach best speed on my wifi. Seems like the chip on N56U isn't so well supported under OpenWRT, as I only reach around 75 MBit/s (though link speed is 150 mbit/s with 100 mbit/s internet connection). With default settings i reached around 30 mbit/s over wifi.
5 Ghz only works sometimes, seems to be another known issue with this Router.
