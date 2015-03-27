require '/home/acubenchik/ruby/suggest/model/suggestion'
require 'csv'
class RequestProcessor
  def process_request(data)
    results = data.map { |element| Suggestion.new(element['_id'],
                                                 element['key'],
                                                 element['name'],
                                                 element['type'],
                                                 element['country'],
                                                 element['geo_position']['latitude'],
                                                 element['geo_position']['longitude'])}
    file = CSV.open("result.csv", "w")
    for element in results
      file << [element.name, element.country]
    end
  end
end