class Sorter

  attr_accessor :hashArray 

  def initialize(array)
    @hashArray = array
  end


  def method_missing(method_name)
    method_name_str=method_name.to_s
    if method_name_str.index('sort_by_')==0
      key_string=method_name_str[8..-1]

      is_a_good_key = lambda do
        @hashArray[0].each_key do |key|
          if key.to_s==key_string 
            return true
          else
            return false
          end
        end
      end

      if is_a_good_key

        @hashArray = @hashArray.sort_by { |hash| hash[key_string.to_sym] }
        ##@hashArray = @hashArray.reverse
        puts @hashArray

      else

        puts "Wrong key to sort"

      end

    else

      puts "Error. This method doesn`t exist."

    end

  end

end