def add_word_count (words_hash, word)
  #if words_hash includes word, add to number, else, create with 1
  if words_hash.include?(word)
    words_hash[word] = words_hash[word] + 1
  else
    words_hash[word] = 1
  end
  return words_hash
end

def substrings(entry, dictionary)
  result_words = Hash.new
  entry.downcase.scan(/\w+/) do |entry_word|
    dictionary.each do |dictionary_word|
      if entry_word.include?(dictionary_word)
        add_word_count(result_words, dictionary_word)
      end
    end
  end
  return result_words.sort.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
