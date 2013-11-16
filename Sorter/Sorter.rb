class Sorter
  attr_accessor :hashes 

  def initialize(array)
    @hashes = array
  end


  def method_missing(method_name)
    method_name_str=method_name.to_s
    key_string=method_name_str[8..-1]

    if @hashes[0].has_key?(key_string.to_sym)
      self.class.class_eval do
        define_method(method_name_str) do
          @hashes = @hashes.sort_by { |hash| hash[key_string.to_sym] }
        end
      end
      self.send(method_name_str)
    else
      puts "Wrong key to sort"
    end

  end

end