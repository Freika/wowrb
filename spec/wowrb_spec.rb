require 'spec_helper'

  describe Wowrb do
  
  it 'has a version number' do
    expect(Wowrb::VERSION).not_to be nil
  end

  it 'has a key value' do 
    expect(Wowrb.config.api_key).not_to eq('')
    expect(Wowrb.config.api_key).not_to be nil
  end

  it 'has a region value' do 
    expect(Wowrb.config.region).not_to eq('')
    expect(Wowrb.config.region).not_to be nil
  end

  it 'has a locale value' do 
    expect(Wowrb.config.locale).not_to eq('')
    expect(Wowrb.config.locale).not_to be nil
  end 

  it 'no has a key value' do     
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY']")
  end

  it 'no has a region value' do     
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_REGION']")
  end

  it 'no has a locale value' do     
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_LOCALE']")
  end

  it 'no has all value' do     
    expect(Wowrb.region_leaderboard).to eq("Env variables missing: ENV['BATTLE_NET_KEY'], ENV['BATTLE_NET_REGION'], ENV['BATTLE_NET_LOCALE']")
  end

  end
