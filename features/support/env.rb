require 'httparty'
require 'cucumber'
require 'rspec'
require 'json'
require 'byebug'

class Servico
  include HTTParty
  base_uri 'https://swapi.co/api'
  default_params output: 'json'
end