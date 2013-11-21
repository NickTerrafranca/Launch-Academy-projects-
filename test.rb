word_counts = {
  "the" => 2, "brown" => 1, "fox" => 1,
  "jumped" => 1, "over" => 1, "lazy" => 1, "dog" => 1
}

common_words = {}

word_counts.each do |word, count|
  if count > 1
    common_words[word] = count
  end
end

puts common_words.inspect # Outputs {"the"=>2}