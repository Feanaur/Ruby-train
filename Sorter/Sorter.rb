class Sorter
  attr_accessor :hashArray 

  def initialize(array)
    @hashArray = array
  end


  def missing_method(method_name)
    #name = method_name.to_s   

    if method_name.index('sort_by_')==0
      key_string=method_name[8..-1]

        is_a_good_key = lambda do
          @hashArray[0].each_key do |key|
           if key.to_s==key_string 
              return true
            else
              return false
            end
          end
        end

      if is_a_good_key do

        ## Здесь будет сортировка по ключевому значению из key_string, 
        ## хотя как её реализовывать я пока понятия не имею...
      else
        puts "Wrong key to sort"
      end

    else
      puts "Error. This method doesn`t exist."
    end
  end


end