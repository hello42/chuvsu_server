namespace :news do
  desc "update news from www.chuvsu.ru"
  task update: :environment do
    NewsItem.update_news
    p "finished"
  end

end
