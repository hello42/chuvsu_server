# == Schema Information
#
# Table name: news_items
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  url        :string(255)
#  image      :string(255)
#

class NewsItem < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  COUNT_LAST_NEWS = ( Rails.env.production? )?  30 : 3

  validates :title, presence: true
  validates :body, presence: true
  validates :url, presence: true

  def self.clear_html html_text
    result  = ApplicationController.helpers.strip_tags html_text
    result = result.sub( /\A.*\n\n/, "")
    result.gsub!(/\{gallery\}[\S]*}/, "")
    result.gsub!(/&nbsp;/, "")
    result
  end

  def self.update_news
    url = "http://www.chuvsu.ru/index.php?option=com_content&view=section&layout=blog&id=222&format=feed&type=rss"
    rss_feed = parse_rss url
    rss_feed.items.reverse.each do |item|
      NewsItem.create title: item.title, image: get_image(item), body: clear_html(item.description), updated_at: parse_date(item), url: item.link unless is_dublicate?(item.link)
    end
  end

  def self.last_items
    last COUNT_LAST_NEWS
  end


private

  def self.parse_date item
     DateTime.parse(item.published.to_s)
  end

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
    return standart_image if result.empty?
    return result[0][0]
  end

  def self.standart_image
    "/standart/standart.jpg"
  end
end
