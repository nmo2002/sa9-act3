require 'address'

RSpec.describe Address do
  describe "#initialize" do
    it "creates a new address object with given attributes" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      expect(address.street).to eq("111 Poplar Ave")
      expect(address.city).to eq("Memphis")
      expect(address.state).to eq("TN")
      expect(address.postal_code).to eq("38105")
    end
  end

  describe "#update_street" do
    it "updates the street attribute" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      address.update_street("444 Poplar Ave")
      expect(address.street).to eq("444 Poplar Ave")
    end
  end

  describe "#update_city" do
    it "updates the city attribute" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      address.update_city("Germantown")
      expect(address.city).to eq("Germantown")
    end
  end

  describe "#update_state" do
    it "updates the state attribute" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      address.update_state("TX")
      expect(address.state).to eq("TX")
    end
  end

  describe "#update_postal_code" do
    it "updates the postal code attribute" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      address.update_postal_code("38016")
      expect(address.postal_code).to eq("38016")
    end
  end

  describe "#display" do
    it "returns the formatted string representation of the address" do
      address = Address.new("111 Poplar Ave", "Memphis", "TN", "38105")
      expect(address.display).to eq("111 Poplar Ave", "Memphis", "TN", "38105")
    end
  end
end
