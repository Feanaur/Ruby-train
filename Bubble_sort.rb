########  ##     ## ########  ########  ##       ######## 
##     ## ##     ## ##     ## ##     ## ##       ##       
##     ## ##     ## ##     ## ##     ## ##       ##       
########  ##     ## ########  ########  ##       ######   
##     ## ##     ## ##     ## ##     ## ##       ##       
##     ## ##     ## ##     ## ##     ## ##       ##       
########   #######  ########  ########  ######## ######## 

 ######   #######  ########  ######## 
##    ## ##     ## ##     ##    ##    
##       ##     ## ##     ##    ##    
 ######  ##     ## ########     ##    
      ## ##     ## ##   ##      ##    
##    ## ##     ## ##    ##     ##    
 ######   #######  ##     ##    ##    

def bubble_sort(array)
  for i in 0...array.length do
    for j in 0...(array.length-i-1) do
      if array[j] > array[j+1]
        tmp=array[j]
        array[j]=array[j+1]
        array[j+1]=tmp
      end
    end
  end
  array
end
array = []
print "Array size: "
arraySize=gets.chomp
arraySize.to_i.times do
  array.push rand(0..100)
end
puts "Random array that hasn`t been sorted yet: "
print array
puts "\nAnd after bubble sort:\n"
print bubble_sort(array)
puts


