require "./Hashes.rb"
require "./Sorter.rb"
include Hash_Module
triple_enter = -> { puts "\n\n\n"}

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
    Hash_Module.add_hash_elem(array)
    triple_enter.call
  when "2"
    Hash_Module.delete_hash_elem(array)
    triple_enter.call
  when "3"
    if array.any?
      cars = Sorter.new(array)
      print "\nEnter the key by which you want to sort: "
      key_to_sort = gets.chomp
      cars.send("sort_by_"+key_to_sort)
      array = cars.hashes
    else
      puts "\nAdd something to array before you start sorting"
    end
    triple_enter.call
  when "4"
    puts array
    triple_enter.call
  else
    puts "This part of menu doesn`t exist. Try again."
    triple_enter.call
  end
end