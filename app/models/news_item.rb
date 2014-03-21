class NewsItem < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  validates :title, presence: true
  validates :body, presence: true
  validates :url, presence: true

  def self.clear_html text
    result  = ApplicationController.helpers.strip_tags text
    result.gsub /\{gallery\}[\S]*}/, ""
  end

  def self.update_news
    url = "http://www.chuvsu.ru/index.php?option=com_content&view=section&layout=blog&id=222&format=feed&type=rss"
    rss_feed = parse_rss url
    rss_feed.items.reverse.each do |item|
      NewsItem.create title: item.title, image: get_image(item), body: clear_html(item.description), url: item.link unless is_dublicate?(item.link)
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

  def self.get_image item
    images = /(https?:\/\/[\S]+jpg)/i
    text = item.description
    result = text.scan images
    result[0][0]
  end

end
