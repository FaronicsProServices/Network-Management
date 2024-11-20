# Retrieves network adapter configurations for all adapters with IP enabled
Get-CimInstance -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=$true
