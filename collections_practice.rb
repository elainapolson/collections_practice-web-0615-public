
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end 


def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end


def reverse_array(array)
  array.reverse
end


def kesha_maker(array)
  array.each do |word|
    word[2] = "$"
  end
end


def greater_and_less_than_10(array)
  array.each_with_object({"less_than_10" => [], "greater_than_10" => []}) do |integer, hash|
    if integer > 10
      hash["greater_than_10"] << integer
    else
      hash["less_than_10"] << integer
    end
  end
end

def find_winners(hash)
  winner_array = []
  winner_array = hash.collect do |name, winner|
    if hash[name] == "winner"
      name
    end
  end 
  winner_array.compact
end



def find_a(array)
  array.select do |string|
    string[0] == "a"
  end
end

def sum_array(array)
  number_array = []
  sum = 0
  number_array = array.select do |object|
    object.is_a? Integer
  end
  number_array.each do |number|
    sum += number
  end
  sum
end

def add_s(array)
  array.collect.each_with_index do |element, index|
    if array.index(element) != 1
      element + "s"  
    else
      element
    end
  end
end


#return a hash whose keys are each word in the story and the value is the 
# number of occurences of that word

def count_words(story)
  story.split(" ").each_with_object(Hash.new(0)) do |word, occurences|
    occurences[word] += 1
  end
end




# def organize_songs_by_artist(songs)
#   songs_array = songs.collect do |song|
#     song.split(" - ")
#   end
#   songs_array.each_with_object(Hash.new(0)) do |song_information, hash|
#     hash[song_information[0]] = []
#     if hash[song_information[0]] == nil
#       hash[song_information[0]] = [song_information[1]]
#     else
#       hash[song_information[0]] << song_information[1]
#     end
#   end
# end


def organize_songs_by_artist(songs)
  songs_array = songs.collect do |song|
    song.split(" - ")
  end
  songs_array.each_with_object(Hash.new(0)) do |song_information, hash|
    if hash.has_key?(song_information[0]) 
      hash[song_information[0]] << song_information[1]
    else
      hash[song_information[0]] = [song_information[1]]
    end
  end
end



