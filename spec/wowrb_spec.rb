require 'spec_helper'

describe Wowrb do
  it 'has a version number' do
    expect(Wowrb::VERSION).not_to be_nil
  end

  it 'has not a key value' do
    expect(Wowrb.region_leaderboard)
      .to eq("Env variables missing: ENV['BATTLE_NET_KEY']")
  end

  it 'has not a region value' do
    expect(Wowrb.region_leaderboard)
      .to eq("Env variables missing: ENV['BATTLE_NET_REGION']")
  end

  it 'has not a locale value' do
    expect(Wowrb.region_leaderboard)
      .to eq("Env variables missing: ENV['BATTLE_NET_LOCALE']")
  end

  it 'has not all value' do
    expect(Wowrb.region_leaderboard)
      .to eq("Env variables missing: ENV['BATTLE_NET_KEY'], \
             ENV['BATTLE_NET_REGION'], ENV['BATTLE_NET_LOCALE']")
  end
end
