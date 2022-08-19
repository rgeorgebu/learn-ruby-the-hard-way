def print_hr
    puts '-' * 10
end

states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}

cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

print_hr
puts "NY State has #{cities['NY']}"
puts "OR State has #{cities['OR']}"

print_hr
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

print_hr
puts "Michigan has #{cities[states['Michigan']]}"
puts "Florida has #{cities[states['Florida']]}"

print_hr
cities.each do |abbrev, city|
    puts "#{abbrev} has city #{city}"
end

print_hr
states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

print_hr
state = states['Texas']

if not state
    puts "Sory, no Texas"
end

# city = cities['TX']
# city ||= 'DOES NOT EXIST'

city = cities['TX'] || 'DOES NOT EXIST'
puts "The city for the state 'TX' is: #{city}"