def integer_input
  input=gets.chomp
  while input!=input.to_i.to_s do
    print "\nWrong input. Please try again: "
    input=gets.chomp
  end 
  input=input.to_i
end

def boolean_input
  puts "Print Y to say yes, and N to say no" 
  input=gets.chomp

  while input!="Y"&&input!="N"
    print "\nWrong input. Please try again: "
    input=gets.chomp
  end 

  if input=="Y"
    input=true
  else input=="N"
    input=false
  end

  input
end


def add_hash_elem(array)
  nameofHash = "hash_#{array.length+1}"
  nameofHash = Hash.new
  print "Enter the name of car: "
  nameofHash[:title] = gets.chomp
  print "\nEnter the power of this car: "  
  nameofHash[:power] = integer_input
  puts "\nIs the gearbox automatic?"
  nameofHash[:auto_gearbox] = boolean_input
  print "Enter the maximal speed: " 
  nameofHash[:maxspeed] = integer_input
  array << nameofHash
  array
end

def delete_hash_elem(array)
  print "Enter the index of hash that you want to delete: "
  index=integer_input
  if index<0 && index>array.length-1
    puts "Wrong index entered. Nothing to change."
  else
  array.delete_at(index)
  end
  array
end