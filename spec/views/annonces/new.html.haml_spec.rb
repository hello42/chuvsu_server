require 'rails_helper'

RSpec.describe "annonces/new", :type => :view do
  before(:each) do
    assign(:annonce, Annonce.new(
      :title => "MyString",
      :body => "MyText",
      :notification => false
    ))
  end

  it "renders new annonce form" do
    render

    assert_select "form[action=?][method=?]", annonces_path, "post" do

      assert_select "input#annonce_title[name=?]", "annonce[title]"

      assert_select "textarea#annonce_body[name=?]", "annonce[body]"

      assert_select "input#annonce_notification[name=?]", "annonce[notification]"
    end
  end
end
