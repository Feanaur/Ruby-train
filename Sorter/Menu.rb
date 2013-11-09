require "./Hashes.rb"
require "./Sorter.rb"

array = []
while true do
  puts "Tiny menu for sorter class"
  puts "1 - Add new hash to array"
  puts "2 - Delete existing hash from array"
  puts "3 - Sort array"
  puts "4 - Print all array"
  choice = gets.chomp
  case choice
  when "1"
    add_hash_elem(array)
  when "2"
    delete_hash_elem(array)
  when "3"
      cars = Sorter.new(array)
      cars = cars.send("sort_by_title")
  when "4"
    puts array
  else
    puts "This part of menu doesn`t exist. Try again.\n\n\n"
  end
end