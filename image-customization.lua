packages {'iwinfo'}

features {
	'autoupdater',
	'config-mode-domain-select',
	'config-mode-geo-location-osm',
	'config-mode-mesh-vpn'
	'ebtables-filter-multicast',
	'ebtables-filter-ra-dhcp',
	'ebtables-limit-arp',
	'ebtables-source-filter',
	'mesh-batman-adv-15',
	'mesh-vpn-fastd',
	'respondd',
	'status-page',
	'web-advanced',
	'web-private-wifi'
	'web-wizard'
}

if not device_class('tiny') then
	features {
		'wireless-encryption-wpa3'
	}
end
