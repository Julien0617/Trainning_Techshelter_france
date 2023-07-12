require 'csv'

class DataConverter
  def convert_to_csv(data, filepath)
    CSV.open(filepath, 'w') do |csv|
      csv << ['userId', 'id', 'title', 'body']
      data.each do |entry|
        csv << [entry['userId'], entry['id'], entry['title'], entry['body']]
      end
    end
  end
end
