# Synology multi profile VPN failover
This is meant to setup auto reconnect VPN on a Synology NAS.

## Usage
- Add VPN profile and connect to it
- SSH into the NAS and run `sudo cat /usr/syno/etc/synovpnclient/vpnc_last_connect | grep 'conf_id\|conf_name'` to get `profileId` (which is `conf_id`) and the `profileName` (which is `conf_name)`
- Replace the placeholder `profileId` and `profileName` variables with the values acquired in the previous step
- Set this script to run often, for example every 10 minutes

### Notes
- This is useful if you have multiple VPN profiles where each one is sometimes offline
- This is best paired with a sort of router kill switch where you block all traffic from your virtual DSM except to VPN ip addresses
