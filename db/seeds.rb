require 'csv'
require_relative '../models/museum'

#clear database
Museum.destroy_all

csv_text = File.read("./db/sf-museums.csv")
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  m = Museum.new
  m.name = row['name']
  m.image = row['image']
  m.specialty = row['specialty']
  m.description = row['description']
  m.url = row['url']
  m.save
end
