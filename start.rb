# Gem Dependencies
require 'irb'
require 'yaml'

# Local Dependencies
require_relative './tron_http/tron_http'

# Load the configuration file for Tron
tron_config = YAML.load_file('./data/tron.yml')

# Configure the Tron API using the configuration file
TronHttp::Setup.run(tron_config)

@nile = TronHttp::Client.new('nile')
@shasta = TronHttp::Client.new('shasta')
@tronex = TronHttp::Client.new('tronex')
@mainnet = TronHttp::Client.new('mainnet')

# Start IRB
IRB.start