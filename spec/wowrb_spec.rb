require 'spec_helper'

describe Wowrb do
  it 'has a version number' do
    expect(Wowrb::VERSION).not_to be_nil
  end

  it 'needs key value' do
    ENV['BATTLE_NET_LOCALE'] = 'ru_RU'
    ENV['BATTLE_NET_REGION'] = 'eu'
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY']")
  end

  it 'needs region value' do
    ENV['BATTLE_NET_LOCALE'] = 'ru_RU'
    ENV['BATTLE_NET_REGION'] = nil
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY'], ENV['BATTLE_NET_REGION']")
  end

  it 'needs key and locale value' do
    ENV['BATTLE_NET_REGION'] = 'eu'
    ENV['BATTLE_NET_LOCALE'] = nil
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY'], ENV['BATTLE_NET_LOCALE']")
  end

  it 'needs key, region and locale values' do
    ENV['BATTLE_NET_REGION'] = nil
    ENV['BATTLE_NET_LOCALE'] = nil
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY'], ENV['BATTLE_NET_REGION'], ENV['BATTLE_NET_LOCALE']")
  end
end
