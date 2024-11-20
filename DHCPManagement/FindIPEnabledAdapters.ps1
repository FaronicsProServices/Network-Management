# Retrieves network adapter configurations where both IP and DHCP are enabled
Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter "IPEnabled=$true and DHCPEnabled=$true"
