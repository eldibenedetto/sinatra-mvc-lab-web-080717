require "pry"
class PigLatinizer

  def piglatinize(word)
    a = word.split("")
    if !a[0].downcase.start_with?("a", "e", "i", "o", "u") && !a[1].downcase.start_with?("a", "e", "i", "o", "u") && !a[2].downcase.start_with?("a", "e", "i", "o", "u")
      suffix = a.shift(3) << "ay"
      suffix.join
      a << suffix
      a.join
    elsif !a[0].downcase.start_with?("a", "e", "i", "o", "u") && !a[1].downcase.start_with?("a", "e", "i", "o", "u")
      ending = a.shift(2) << "ay"
      ending.join
      a << ending
      a.join
    elsif !a[0].downcase.start_with?("a", "e", "i", "o", "u")
      tail = a.shift + "ay"
      a << tail
      a.join
    else
      word + "way"
    end
  end

  def to_pig_latin(sentence)
    s = sentence.split(" ")
    s.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end
