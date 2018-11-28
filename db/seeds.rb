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
  t = Employee.create
  t.name = row['name']
  t.email = row['email']
  t.dept = row['dept']
  t.active = row['active']
  t.save
  puts "#{t.name}, #{t.email}, #{t.dept}, #{t.active} saved "
end

puts "#{Employee.count}"
