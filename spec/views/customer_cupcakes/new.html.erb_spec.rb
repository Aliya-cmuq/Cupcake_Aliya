require 'spec_helper'

describe "customer_cupcakes/new" do
  before(:each) do
    assign(:customer_cupcake, stub_model(CustomerCupcake,
      :name => "MyString",
      :size => "MyString",
      :flavor => "MyString",
      :icing => "MyString",
      :aditional_topping => "MyString"
    ).as_new_record)
  end

  it "renders new customer_cupcake form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customer_cupcakes_path, :method => "post" do
      assert_select "input#customer_cupcake_name", :name => "customer_cupcake[name]"
      assert_select "input#customer_cupcake_size", :size => "customer_cupcake[size]"
      assert_select "input#customer_cupcake_flavor", :falvor => "customer_cupcake[flavor]"
      assert_select "input#customer_cupcake_icing", :icing => "customer_cupcake[icing]"      
      assert_select "input#customer_cupcake_aditional_topping", :aditional_topping => "customer_cupcake[aditional_topping]"
    end
  end
end
