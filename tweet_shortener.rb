dictionary =
{"hello" => 'hi',
"to" => '2',
"To" => '2',
 "two" => '2',
 "Two" => '2',
 "too" => "2",
 "Too" => "2",
 "for" => "4",
 "For" => "4",
 "four" => "4",
 'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"}

def word_substituter(string)

  dictionary =
  {"hello" => 'hi',
  "to" => '2',
  "To" => '2',
   "two" => '2',
   "Two" => '2',
   "too" => "2",
   "Too" => "2",
   "for" => "4",
   "For" => "4",
   "four" => "4",
   'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&"}




    array1 = string.split(" ")
    array2 = []
    y = 0
    while y < array1.length
      if dictionary.keys.include? array1[y]
        array2.push(dictionary[array1[y]])
     else
       array2.push(array1[y])
     end
      y += 1
    end
    return array2.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |i|
    puts  word_substituter(i)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  if word_substituter(string).length > 140
    word_substituter(string)[0..139]
  else
    word_substituter(string)
  end
end
