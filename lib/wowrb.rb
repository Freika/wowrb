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

  def self.boss(boss_id = nil)
    remote_url = "#{url}/boss/#{boss_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.region_leaderboard
    remote_url = "#{url}/challenge/region?#{credentials}"
    call_api(remote_url)
  end

  def self.leaderboard_for(realm_name)
    remote_url = "#{url}/challenge/#{realm_name}?#{credentials}"
    call_api(remote_url)
  end

  def self.character(realm, character_name, fields = nil)
	remote_url = "#{url}/character/#{realm}/#{character_name}?"
	remote_url += "fields=#{fields}&" if fields
	remote_url += "#{credentials}"
    call_api(remote_url)
  end
    
  def self.guild(realm, guild_name, fields = nil)
  	remote_url = "#{url}/guild/#{realm}/#{guild_name}?"
	remote_url += "fields=#{fields}&" if fields
	remote_url += "#{credentials}"
    call_api(remote_url)
  end

  def self.item(item_id)
  	remote_url = "#{url}/item/#{item_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.item_set(set_id)
    remote_url = "#{url}/item/set/#{set_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.mount
    remote_url = "#{url}/mount/?#{credentials}"
    call_api(remote_url)
  end

  def self.pet
    remote_url = "#{url}/pet/?#{credentials}"
    call_api(remote_url)
  end

  def self.pet_ability(ability_id)
    remote_url = "#{url}/pet/ability/#{ability_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.pet_species(species_id)
    remote_url = "#{url}/pet/species/#{species_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.pet_stats(stats_id, level, breed_id, quality_id)
  	remote_url = "#{url}/pet/stats/#{stats_id}?"
	remote_url += "level=#{fields}&" if level
	remote_url += "breedId=#{breed_id}&" if breed_id
	remote_url += "qualityId=#{quality_id}&" if quality_id
	remote_url += "#{credentials}"
    call_api(remote_url)
  end

  def self.pvp(bracket)
    remote_url = "#{url}/leaderboard/#{bracket}?#{credentials}"
    call_api(remote_url)
  end

  def self.quest(quest_id)
    remote_url = "#{url}/quest/#{quest_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.realm_status
    remote_url = "#{url}/realm/status?#{credentials}"
    call_api(remote_url)
  end

  def self.recipe(recipe_id)
    remote_url = "#{url}/recipe/#{recipe_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.spell(spell_id)
    remote_url = "#{url}/spell/#{spell_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.zone(zone_id = nil)
    remote_url = "#{url}/zone/#{zone_id}?#{credentials}"
    call_api(remote_url)
  end

  def self.data_battlegroups 
    remote_url = "#{url}/data/battlegroups/?#{credentials}"
    call_api(remote_url)
  end

  def self.data_character(parameter)
    remote_url = "#{url}/data/character/#{parameter}?#{credentials}"
    call_api(remote_url)
  end

  def self.data_guild(parameter)
    remote_url = "#{url}/data/guild/#{parameter}?#{credentials}"
    call_api(remote_url)
  end

  def self.data_item_classes
    remote_url = "#{url}/data/item/classes?#{credentials}"
    call_api(remote_url)
  end

  def self.data_talents
    remote_url = "#{url}/data/talents?#{credentials}"
    call_api(remote_url)
  end

  def self.data_pet_types
    remote_url = "#{url}/data/pet/types?#{credentials}"
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
