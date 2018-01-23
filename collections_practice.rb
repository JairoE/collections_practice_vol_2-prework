require 'pry'

def begins_with_r(array)
  i=0
  while i < array.length
    if array[i][0] != 'r'
      return false
    end
    i +=1

  end
  true
end

def contain_a(array)
  array2 = []
  array.each do |x|
    if x.include?("a")
      array2 << x
    end
  end

  array2
end

def first_wa(array)

  array.each do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)

  array.select do |word|
    word.instance_of? String
  end
end

def count_elements(data)
  counter = []
  data.each do |value|

    if counter != []
      counter_names = counter.collect {|hash| hash[:name]}
      binding.pry
      if counter_names.include?(value[:name])
          counter.each do |nombre, count|
            if nombre == value[:name]
              count +=1
              binding.pry
            end

          end
      else
          counter << {:name => value[:name], :count => 1 }
      end
    else
      counter << {:name => value[:name], :count => 1 }
    end


  end



  counter



end

def merge_data(array, array2)
  array << array2
end

def find_cool(hash)
  hash.each_with_index do |x,i|
    hash[i] == 'cool'
  end
end

def organize_schools(array)
  array.sort do |a,b|
    if a==b
      0
    elsif a < b
      -1
    elsif a > b
      1
    end
  end
end
