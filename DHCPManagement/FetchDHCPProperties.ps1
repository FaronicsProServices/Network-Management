# Retrieves network adapter configurations where both IP and DHCP are enabled, and displays only DHCP-related properties in a table format
Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter "IPEnabled=$true and DHCPEnabled=$true" | Format-Table -Property DHCP*
