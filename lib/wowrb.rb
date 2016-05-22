require 'wowrb/version'
require 'wowrb/config'
require 'httparty'

module Wowrb
  include HTTParty

  def self.achievement(achievement_id)
    remote_url = "#{url}/achievement/#{achievement_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.auction_url(realm_name)
    remote_url = "#{url}/auction/data/#{realm_name}?#{credentials}"
    call_api(remote_url)
  end

  def self.item(item_id)
    remote_url = "#{url}/item/#{item_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.config
    Wowrb::Config.new(
      api_key: ENV['BATTLE_NET_KEY'],
      region: ENV['BATTLE_NET_REGION'],
      locale: ENV['BATTLE_NET_LOCALE']
    )
  end

  def self.url
    "https://#{Wowrb.config.region}.api.battle.net/wow"
  end
  private_class_method :url

  def self.credentials
    "locale=#{Wowrb.config.locale}&apikey=#{Wowrb.config.api_key}"
  end
  private_class_method :credentials

  def self.call_api(remote_url)
    encoded_url = URI.encode(remote_url)
    response = HTTParty.get(encoded_url)
    JSON.parse(response.body)
  end
  private_class_method :call_api
end
