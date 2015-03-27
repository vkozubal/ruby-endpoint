require '/home/acubenchik/ruby/suggest/model/geo_position'
class Suggestion
  attr_accessor :_id, :key, :name,  :type, :country, :geo_pos

  def initialize(id, key, name, type, country, lat, lng)
    @_id=id
    @key=key
    @name=name
    @type=type
    @country=country
    @geo_pos=GeoPosition.new(lat, lng)
  end

  def to_s
    puts "Suggestion with id  #@_id and key #@key has name #@name of type #@type in #@country with
      position #{@geo_pos.latitude} #{@geo_pos.longitude}"
  end
end