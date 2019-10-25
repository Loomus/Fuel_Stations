require 'rails_helper'

describe "As a user, When I visit '/'" do
  describe "And I select 'Turing' from the drop down, And I click 'Find Nearest Station'" do
    it "I should then be on '/search' then I should see the closest electric fuel station to me" do
      visit root_path

      select "Turing", from: :location
      click_on "Find Nearest Station"

      
    end
  end
end

# The NREL alternate fuel stations nearest station API: https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/
# The Google Directions API: https://developers.google.com/maps/documentation/directions/start
# We will be searching for the nearest electric charging station to Turing.
#
# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
#
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Distance
# - Access Times
#
# I should also see:
# - the distance of the nearest station
# - the travel time from Turing to that fuel station (should be 0.1 miles)
# - The HTML direction instructions to get to that fuel station
  # "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"
