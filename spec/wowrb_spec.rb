require 'spec_helper'

describe Wowrb do
  it 'has a version number' do
    expect(Wowrb::VERSION).not_to be nil
  end

  it 'has a key value' do 
    ENV['BATTLE_NET_KEY'] = 'key'
    expect(Wowrb.config.api_key).not_to be nil
  end

  it 'has a region value' do 
    ENV['BATTLE_NET_REGION'] = 'RU'
    expect(Wowrb.config.region).not_to be nil
  end

  it 'has a locale value' do
    ENV['BATTLE_NET_LOCALE'] = 'ru_RU'
    expect(Wowrb.config.locale).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
