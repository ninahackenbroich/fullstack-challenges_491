def louchebemize(sentence)
  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  words = sentence.split(/\b/)
  final_sent = []
  words.each do |word| 
    if word =~ /\W/
      final_sent << word
    else
      return word if word.size == 1

      if word[0] == /([aeiou].*)/
        # word beginning with vowel
        "l#{word}#{suffixes.sample}" # word beginning with vowel
      else
        # word beginning with 1 or more consonants
        parts = word.strip.split(/([aeiou].*)/)
        secret_word = "l#{parts[1]}#{parts[0]}#{suffixes.sample}"
        final_sent << secret_word
      end
    end
  end
  final_sent.join
  # TODO: implement your louchebem translator
end
