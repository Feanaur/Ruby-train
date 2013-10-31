class Boiler
  attr_accessor :array

  def initialize(array=[])
    if array.kind_of?(Array)==true
      @array = array
      @sorted = false
    else
      puts "It`s not an array! Think twice before create object again."
      @array = []
      @sorted = false
    end
  end


  def bubble_sort
    if @sorted==false 
      for i in 0...@array.length do
        for j in 0...(@array.length-i-1) do
          if @array[j] > @array[j+1]
            @array[j],@array[j+1]=@array[j+1],@array[j]
          end
        end
      end
    else
     puts "This array already have been sorted"
    end
    @sorted=true
  end
end


def random_fill(array)
  print "Enter the array size: "
  arraySize=gets.chomp
  while arraySize!=arraySize.to_i.to_s do
    print "\nWrong input. Please try again: "
    arraySize=gets.chomp
  end 
  arraySize=arraySize.to_i

  print "\nEnter the borders of random range:\nfrom:"
  leftBorder=gets.chomp
  while leftBorder!=leftBorder.to_i.to_s do
    print "\nWrong input. Please try again: "
    leftBorder=gets.chomp
  end 
  leftBorder=leftBorder.to_i

  print "\nto: "
  rightBorder=gets.chomp
  while rightBorder!=rightBorder.to_i.to_s do
    print "\nWrong input. Please try again: "
    rightBorder=gets.chomp
  end 
  rightBorder=rightBorder.to_i

  arraySize.times do
    array << rand(leftBorder..rightBorder)
  end
  array
end 

array = []
array = random_fill(array)

puts "\nTest 1: Random array to input. All must be right."
boiler1=Boiler.new(array)
boiler1.bubble_sort
print boiler1.array


puts "\nTest 2: Defult initialize. Empty array."
boiler2=Boiler.new
boiler2.bubble_sort
print boiler2.array


puts "\nTest 3: Wrong argument to input. Error must be thrown."
boiler3=Boiler.new(568)
print boiler3.array

puts "\nTest 4: Array is already sorted."
boiler4=Boiler.new(array)
boiler4.bubble_sort
boiler4.bubble_sort