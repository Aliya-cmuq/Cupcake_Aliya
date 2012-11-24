require 'spec_helper'

describe "customer_cupcakes/index" do
  before(:each) do
    assign(:customer_cupcakes, [
      stub_model(CustomerCupcake,
        :name => "Name",
        :size => "Size",
        :flavor => "Flavor",
        :icing => "Icing",
        :aditional_topping => "Aditional Topping"
      ),
      stub_model(CustomerCupcake,
        :name => "Name",
        :size => "Size",
        :flavor => "Flavor",
        :icing => "Icing",
        :aditional_topping => "Aditional Topping"
      )
    ])
  end

  it "renders a list of customer_cupcakes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Flavor".to_s, :count => 2
    assert_select "tr>td", :text => "Icing".to_s, :count => 2
    assert_select "tr>td", :text => "Aditional Topping".to_s, :count => 2
  end
end
