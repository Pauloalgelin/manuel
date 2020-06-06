require 'rails_helper'

RSpec.describe "manuals/new", type: :view do
  before(:each) do
    assign(:manual, Manual.new())
  end

  it "renders new manual form" do
    render

    assert_select "form[action=?][method=?]", manuals_path, "post" do
    end
  end
end
