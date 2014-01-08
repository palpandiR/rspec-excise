require 'spec_helper'

describe "widgets/index" do
  before(:each) do
    assign(:widgets, [
      stub_model(Widget,
        :name => ""
      ),
      stub_model(Widget,
        :name => ""
      )
    ])
  end

  it "renders a list of widgets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
