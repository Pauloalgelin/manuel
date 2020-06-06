require 'rails_helper'

RSpec.describe "manuals/show", type: :view do
  before(:each) do
    @manual = assign(:manual, Manual.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
