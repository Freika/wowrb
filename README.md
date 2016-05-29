# Wowrb

Ruby wrapper for Battle.net World of Warcraft API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wowrb', github: 'Freika/wowrb'
```

And then execute:

    $ bundle install


### Required environment variables

`BATTLE_NET_KEY` — key from here: https://dev.battle.net/apps/mykeys

`BATTLE_NET_REGION` — one of available regions: `us`, `eu`, `kr` or `tw`

`BATTLE_NET_LOCALE` — one of available locales.

I recommend to use [figaro](https://github.com/laserlemon/figaro) or [dot_env](https://github.com/bkeepers/dotenv) gem for managing environment variables.


#### Locales by regions

EU: `en_GB`, `de_DE`, `es_ES`, `fr_FR`, `it_IT`, `pl_PL`, `pt_PT`, `ru_RU`

US: `en_US`, `pt_BR`, `es_MX`

KR: `ko_KR`

TW: `zh_TW`


## Usage

`Wowrb.achievement(achievement_id)` returns given achievement information.

`Wowrb.auction_url(realm_name)` returns url and last modified time for given realm.

`Wowrb.boss(boss_id = nil)` returns a list of all supported bosses. If specify the 'boss_id' parametr will be returns information about bosses.

`Wowrb.region_leaderboard` returns the top 100 results gathered for each map for all of the available realm leaderboards in a region.

`Wowrb.leaderboard_for(realm_name)` returns data for all 9 challenge mode maps (currently).

`Wowrb.character(realm, character_name, fields = nil)` returns character information. If no fields are specified the API will only return basic data about the character.

`Wowrb.guild(realm, guild_name, fields = nil)` returns guild information. By default, a basic dataset will be returned and with each request and zero or more additional fields can be retrieved. There are no required query string parameters when accessing this resource, although the fields query string parameter can optionally be passed to indicate that one or more of the optional datasets is to be retrieved. Those additional fields are listed in the method titled "Optional Fields".

`Wowrb.item(item_id)` returns given item information.

`Wowrb.item_set(set_id)` returns item set information if this item is part of a set.

`Wowrb.mount` returns a list of all supported mounts.

`Wowrb.pet` returns a list of all supported battle and vanity pets.

`Wowrb.pet_ability(ability_id)` returns data about a individual battle pet ability ID.

`Wowrb.pet_species(species_id)` returns data about an individual pet species. Each species also has data about what it's 6 abilities are.

`Wowrb.pet_stats(stats_id, level, breed_id, quality_id)` returns detailed information about a given species of pet.

`Wowrb.pvp(bracket)` returns leaderboard information for the 2v2, 3v3, 5v5 and Rated Battleground leaderboards.

`Wowrb.quest(quest_id)` returns metadata for a given quest.

`Wowrb.realm_status` The allows developers to retrieve realm status information. This information is limited to whether or not the realm is up, the type and state of the realm, the current population, and the status of the two world PvP zones.

`Wowrb.recipe(recipe_id)` returns basic recipe information.

`Wowrb.spell(spell_id)` returns some information about spells.

`Wowrb.zone(zone_id = nil)` returns list of all supported zones and their bosses if specify 'zone_id' parametr will be returns some information about zones.

`Wowrb.data_battlegroups` returns the list of battlegroups for this region.

`Wowrb.data_character(parametr)` returns a list of each race and their associated faction, name, unique ID, and skin with the 'races' parametr. Returns a list of character classes with the 'classes' parametr. Returns a list of all of the achievements that characters can earn as well as the category structure and hierarchy with the 'achievements' parametr. 

`Wowrb.data_guild(parametr)` returns a list of all guild rewards with the 'rewards' parametr. Returns a list of all guild perks with the 'perks' parametr. Returns a list of all of the achievements that guilds can earn as well as the category structure and hierarchy with the 'achievements' parametr.

`Wowrb.data_item_classes` returns a list of item classes.

`Wowrb.data_talents` returns a list of talents, specs and glyphs for each class.

`Wowrb.data_pet_types` returns the different bat pet types (including what they are strong and weak against).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Freika/wowrb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

