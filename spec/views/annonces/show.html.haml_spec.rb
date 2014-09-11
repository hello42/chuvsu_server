require 'rails_helper'

RSpec.describe "annonces/show", :type => :view do
  before(:each) do
    @annonce = assign(:annonce, Annonce.create!(
      :title => "Title",
      :body => "MyText",
      :notification => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
