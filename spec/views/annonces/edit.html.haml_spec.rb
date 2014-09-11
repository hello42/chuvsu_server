require 'rails_helper'

RSpec.describe "annonces/edit", :type => :view do
  before(:each) do
    @annonce = assign(:annonce, Annonce.create!(
      :title => "MyString",
      :body => "MyText",
      :notification => false
    ))
  end

  it "renders the edit annonce form" do
    render

    assert_select "form[action=?][method=?]", annonce_path(@annonce), "post" do

      assert_select "input#annonce_title[name=?]", "annonce[title]"

      assert_select "textarea#annonce_body[name=?]", "annonce[body]"

      assert_select "input#annonce_notification[name=?]", "annonce[notification]"
    end
  end
end
