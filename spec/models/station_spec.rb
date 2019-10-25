require 'rails_helper'

describe Station do
  it "exists" do
    attributes = {
      name: "Seventeenth Street Plaza",
      address: "1225 17th St.",
      fuel_type: "ELEC",
      distance: 0.0934,
      access_time: "24 hours daily"
    }

    station = Station.new(attributes)

    expect(station).to be_a Station
    expect(station.name).to eq("Seventeenth Street Plaza")
    expect(station.address).to eq("1225 17th St.")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.distance).to eq(0.0934)
    expect(station.access_time).to eq("24 hours daily")
  end
end
