
# Identify the most common word in the document and display it along with its frequency.
# Provide word frequency statistics, listing the top 10 most common words and their frequencies.
# Utilize appropriate data structures (e.g., arrays, hashes) to manage the data efficiently.
# Use blocks and sorting to organize the word frequency statistics.


#analyzes a text
#checks for duplicate words
#if a word is duplicated
#print it to the console
#and show how many times it occurs
#word count
#character count
#paragraph count 
#most common word
#top 10 most common words

text = "Lorem ipsum. To most of us, its a passage of meaningless Latin that fills websites or brochure layouts with text while waiting on writers to fill it with real copy. And in fact, lorem ipsum was designed as nonsense from the beginning. Its use rose to prominence as early as the 1500s, when an unknown printer created a test passage for a printing press by scrambling The Extremes of Good and Evil, written by Cicero in 45 B.C. And were still using the same old gibberish today."

    freq= Hash.new(0)
    words = text.downcase.split(/[^\w']+/)

   
   words.each do |word|
  freq[word] += 1
    end

most_common_word = freq.max_by { |word, count| count }

puts "Word Count: #{text.split.length}"
puts "Character Count: #{text.length}"
puts "Paragraph Count: #{text.split(/\n\n+/).count}"
puts "Most Common: #{most_common_word[0]} (appeared #{most_common_word[1]} times)"
