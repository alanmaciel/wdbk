require 'spec_helper'

describe "receipts/new" do
  before(:each) do
    assign(:receipt, stub_model(Receipt,
      :name => "MyString",
      :amount => "9.99",
      :tax => "9.99"
    ).as_new_record)
  end

  it "renders new receipt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receipts_path, :method => "post" do
      assert_select "input#receipt_name", :name => "receipt[name]"
      assert_select "input#receipt_amount", :name => "receipt[amount]"
      assert_select "input#receipt_tax", :name => "receipt[tax]"
    end
  end
end
