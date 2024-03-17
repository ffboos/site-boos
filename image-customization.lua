packages {'iwinfo'}

features {
	'autoupdater',
	'config-mode-domain-select',
	'config-mode-outdoor'
	'config-mode-geo-location-osm',
	'config-mode-mesh-vpn',
	'config-mode-contact-info',
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'ebtables-source-filter',
	'mesh-batman-adv-15',
	'mesh-wireless-sae',
	'mesh-vpn-wireguard',
	'respondd',
	'status-page',
	'web-advanced',
	'web-private-wifi',
	'web-wizard'
}

if not device_class('tiny') then
	features {
		'wireless-encryption-wpa3'
	}
end
