class NewsItem < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :url, presence: true


  def self.update_news
    url = "http://www.chuvsu.ru/index.php?option=com_content&view=section&layout=blog&id=97&Itemid=139&format=feed&type=rss"
    rss_feed = parse_rss url
    rss_feed.items.each do |item|
      NewsItem.create title: item.title, body: item.description, url: item.link unless is_dublicate?(item.link)
    end
  end

private

  def self.parse_rss url
    fp = FeedParser.new url: url
    fp.parse
  end

  def self.is_dublicate? link
    result = find_by url: link
    return not(result.nil?)
  end

end
