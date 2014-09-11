require 'rails_helper'

RSpec.describe "annonces/index", :type => :view do
  before(:each) do
    assign(:annonces, [
      Annonce.create!(
        :title => "Title",
        :body => "MyText",
        :notification => false
      ),
      Annonce.create!(
        :title => "Title",
        :body => "MyText",
        :notification => false
      )
    ])
  end

  it "renders a list of annonces" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
