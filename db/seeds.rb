# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'employees.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  e = Employee.new
  e.name = row.('name')
  e.email = row.('email')
  e.dept = row.('dept')
  e.active = row.('active')
  e.save
  puts "#{e.name}, #{e.email}, #{e.dept}, #{e.active} saved "
end

puts "#{e.count}"
