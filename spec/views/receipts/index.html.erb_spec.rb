require 'spec_helper'

describe "receipts/index" do
  before(:each) do
    assign(:receipts, [
      stub_model(Receipt,
        :name => "Name",
        :amount => "9.99",
        :tax => "9.99"
      ),
      stub_model(Receipt,
        :name => "Name",
        :amount => "9.99",
        :tax => "9.99"
      )
    ])
  end

  it "renders a list of receipts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s
    assert_select "tr>td", :text => "9.99".to_s
    assert_select "tr>td", :text => "9.99".to_s
  end
end
