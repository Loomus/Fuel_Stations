class StationsFacade
  def initialize(location)
    @location = location
  end

  def stations
    conn = Faraday.new("https://developer.nrel.gov") do |f|
      f.params['api_key'] = ENV['nrel_api_key']
      f.params['location'] = ["1331 17th St LL100, Denver, CO 80202"]
      f.adapter Faraday.default_adapter

      binding.pry
  end
end
