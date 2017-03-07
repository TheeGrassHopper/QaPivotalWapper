require 'tracker_api'
require 'httparty'
require 'yaml'
require_relative 'base'
require_relative 'api_request'
require_relative 'story'

config = File.read("config.yml")
APP = YAML.load(config)
