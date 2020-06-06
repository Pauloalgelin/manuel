require 'rails_helper'

RSpec.describe "manuals/index", type: :view do
  before(:each) do
    assign(:manuals, [
      Manual.create!(),
      Manual.create!()
    ])
  end

  it "renders a list of manuals" do
    render
  end
end
