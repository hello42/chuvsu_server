class Geo

  def self.get_coord_by_adress address
    url = generate_url address
    p url
    geo = extract(get_request(url))
  end


  def self.generate_url addr
    addr.gsub! " ", "+"
    "http://geocode-maps.yandex.ru/1.x/?format=json&geocode=#{addr}"
  end

  def self.get_request url
    require 'addressable/uri'
    normalize_url = Addressable::URI.parse(url).normalize.to_str
    res = RestClient.get normalize_url
    res.to_s
  end

  def self.extract data
    binding.pry
  end

end
