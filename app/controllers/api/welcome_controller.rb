class Api::WelcomeController < ApplicationController
  def index
    @news = NewsItem.last_items
    @annonces = Annonce.get_in_future
    @pages = Page.all
    @organisations = Organisation.all
    @students = Student.all
    @facults = Facult.all
    @phones = Phone.all
    @address = Address.all
  end
end
