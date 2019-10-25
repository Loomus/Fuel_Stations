class StationsFacade
  def initialize(location)
    @location = location
  end

  def stations
    conn = Faraday.new(url: "https://developer.nrel.gov") do |f|
      f.params['format'] = ['json']
      f.params['api_key'] = ENV['nrel_api_key']
      f.params['location'] = ["1331 17th St LL100, Denver, CO 80202"]
      f.adapter Faraday.default_adapter
    end

    response = conn.get("/api/alt-fuel-stations/v1/nearest")

    station_search_data = JSON.parse(response.body, symbolize_names: true)

    station_search_data.map do |station_data|
      Station.new(station_data)
    end
  end

  private
  attr_reader :location
end
