require 'rails_helper'

RSpec.describe "manuals/edit", type: :view do
  before(:each) do
    @manual = assign(:manual, Manual.create!())
  end

  it "renders the edit manual form" do
    render

    assert_select "form[action=?][method=?]", manual_path(@manual), "post" do
    end
  end
end
