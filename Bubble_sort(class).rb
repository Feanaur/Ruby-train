class Boiler
  attr_accessor :array

  def initialize(array=[])
    @array = array
    @sorted = false
  end

  def bubble_sort
    #if @sorted==true# || @array.kind_of?(Array)==false
      for i in 0...@array.length do
        for j in 0...(@array.length-i-1) do
          if @array[j] > @array[j+1]
            @array[j],@array[j+1]=@array[j+1],@array[j]
          end
        end
      end
    #else
     # puts "This array already have been sorted"
    #end
    # @sorted=true
  end

end

array = []
print "Array size: "
arraySize=gets.chomp
arraySize.to_i.times do
  array.push rand(0..100)
end

boiler1=Boiler.new(array)
boiler1.bubble_sort
print boiler1.array
boiler2=Boiler.new
boiler2.bubble_sort
print boiler2.array
puts
