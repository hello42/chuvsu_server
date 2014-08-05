class Geo

  def self.get_coord_by_adress address
    url = generate_url address
    geo = extract(get_request(url))
    geo
  end

  def self.generate_url addr
    addr.gsub! " ", "+"
    "http://geocode-maps.yandex.ru/1.x/?format=json&geocode=#{addr}"
  end

  require 'addressable/uri'
  def self.get_request url
    normalize_url = Addressable::URI.parse(url).normalize.to_str
    res = RestClient.get normalize_url
    res.to_s
  end

  def self.extract data
    response = JSON.parse data
    pos = response["response"]["GeoObjectCollection"]["featureMember"].first["GeoObject"]["Point"]["pos"]
    pos
  end

end
