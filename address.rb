
class Address
  attr_accessor :street, :city, :state, :postal_code

  def initialize(street, city, state, postal_code)
    @street = street
    @city = city
    @state = state
    @postal_code = postal_code
  end

  def update_street(new_street)
    @street = new_street
  end

  def update_city(new_city)
    @city = new_city
  end

  def update_state(new_state)
    @state = new_state
  end

  def update_postal_code(new_postal_code)
    @postal_code = new_postal_code
  end

  def display
    "#{@street}, #{@city}, #{@state} #{@postal_code}"
  end
end
