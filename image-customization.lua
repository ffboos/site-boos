packages {
	'ff-ap-timer',
	'ff-web-ap-timer',
	'ffac-autoupdater-wifi-fallback',
	'ffac-change-autoupdater',
	'ffac-ssid-changer',
	'ffmuc-ipv6-ra-filter',
	'ffmuc-mesh-vpn-wireguard-vxlan',
	'iwinfo',
	'respondd-module-airtime',
	'tcpdump',
}

features {
	'autoupdater',
	'config-mode-contact-info',
	'config-mode-domain-select',
	'config-mode-geo-location-osm',
	'config-mode-mesh-vpn',
	'config-mode-outdoor',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'ebtables-source-filter',
	'mesh-batman-adv-15',
	'mesh-wireless-sae',
	'mesh-vpn-wireguard',
	'node-info',
	'neighbour-info',
	'respondd',
	'status-page',
	'status-page-mesh-batman-adv',
	'web-advanced',
	'web-network',
	'web-private-wifi',
	'web-wizard',
}

if not device_class('tiny') then
	features {
		'wireless-encryption-wpa3'
	}
end
