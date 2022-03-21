# Synology multi profile VPN failover
## Usuage
- Replace the placeholder `profileId` and `profileName` variables
- Set this script to run often, for example every 10 minutes

### Notes
- This is useful if you have multiple vpn profiles where each one is sometimes offline
- This is best paired with a sort of router kill switch where you block all traffic from your virtual dsm except to vpn ip addresses
