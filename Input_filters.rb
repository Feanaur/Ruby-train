module Input_filters

  integer_input= lambda do
    input=gets.chomp
    while input!=input.to_i.to_s do
      print "\nWrong input. Please try again: "
      input=gets.chomp
    end 
    input=input.to_i
  end
  
end