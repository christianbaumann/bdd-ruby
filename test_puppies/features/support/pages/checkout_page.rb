class CheckoutPage
  include PageObject

  DEFAULT_DATA = {
      :name => 'cheezy',
      :address => '123 Main Street',
      :email => 'cheezy@example.com',
      :pay_type => 'Purchase order'
  }

  text_field(:name, id: "order_name")
  text_area(:address, id: "order_address")
  text_field(:email, id: "order_email")
  select_list(:pay_type, id: "order_pay_type")
  button(:place_order, value: "Place Order")

  def checkout(data = {})
    data = DEFAULT_DATA.merge(data)
    self.name = data[:name]
    self.address = data[:address]
    self.email = data[:email]
    self.pay_type = data[:pay_type]
    place_order
  end
end
