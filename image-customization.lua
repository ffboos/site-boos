packages {'iwinfo', 'tcpdump' }

features {
	'autoupdater',
	'config-mode-domain-select',
	'config-mode-outdoor',
	'config-mode-geo-location-osm',
	'config-mode-mesh-vpn',
	'config-mode-contact-info',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'ebtables-source-filter',
	'ffmuc-mesh-vpn-wireguard-vxlan',
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
