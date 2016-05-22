class Wowrb::Config
  attr_accessor :api_key, :region, :locale

  def initialize(settings)
    @api_key ||= settings[:api_key]
    @region  ||= settings[:region]
    @locale  ||= settings[:locale]
  end
end
