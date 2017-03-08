require 'tracker_api'
require 'httparty'
require 'yaml'
require_relative 'base'
require_relative 'api_request'

config = File.read("config.yml")
APP = YAML.load(config)
