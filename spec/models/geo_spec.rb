require "spec_helper"

describe "check address" do
  it "check get geo by address" do
    address = "Чебоксары, Ленина 2"
    geo = Geo.get_coord_by_adress address
    expect(geo).to eq([1,2])
  end
end
