class Sorter
  attr_accessor :hashes 

  def initialize(array)
    @hashes = array
  end


  def method_missing(method_name)
    method_name_str=method_name.to_s
    key_string=method_name_str[8..-1]

    is_a_good_key = lambda do
      @hashes[0].each_key do |key|
        if key.to_s==key_string 
          return true
        end
      end
      return false
    end

    if is_a_good_key.call
      @hashes = @hashes.sort_by { |hash| hash[key_string.to_sym] }
    else
      puts "Wrong key to sort"
    end

  end

end