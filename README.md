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

`Wowrb.item(item_id)` returns given item information.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Freika/wowrb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

