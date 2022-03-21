#!/bin/bash


# function params:
# profileName: name of vpn profile in web interface
# profileId: id of vpn profile is found at /usr/syno/etc/synovpnclient/openvpn/ovpnclient.conf
connectToProfile() {
	if synovpnc get_conn | grep -q 'No connection'
	then
		profileId=$1
		profileName=$2

		echo "connecting to: ${profileName}"

		echo conf_id=$profileId> /usr/syno/etc/synovpnclient/vpnc_connecting
		echo conf_name=$profileName >> /usr/syno/etc/synovpnclient/vpnc_connecting
		echo proto=openvpn >> /usr/syno/etc/synovpnclient/vpnc_connecting
		synovpnc connect --id=$profileId
	else
		echo "connection verified"
		exit 0
	fi
}


connectToProfile profileId1 profileName1
connectToProfile profileId2 profileName2
connectToProfile profileId2 profileName2

if synovpnc get_conn | grep -q 'No connection'
then
	echo "failed to connect to any profile"
else
	echo "connection verified"
fi
exit 0