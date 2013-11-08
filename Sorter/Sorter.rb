class Sorter
  attr_accessor :hashArray 

  def initialize(array)
    @hashArray = array
  end

  def missing_method()
  @hashArray.each do |system|
    define_method "sort_by_#{system.downcase}?" do
      
    end
  end
end