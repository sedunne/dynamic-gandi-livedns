## update an A record on gandi LiveDNS
require 'dynacord'
require 'yaml'

config = YAML::load_file(File.join(__dir__, 'config.yml'))
gandi = Dynacord::Provider::Gandi::LiveDNS.new(apikey: config['LIVEDNS_API_KEY'])
ipaddr = Dynacord::Address.get
zone = gandi.uuid_from_domain(domain: config['DOMAIN'])
response = gandi.update_record(record: config['RECORD'], zone: zone, ipaddr: ipaddr)
