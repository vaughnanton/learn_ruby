def translate_single(s)
  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(s[0])
    "#{s}ay"
  else
    i = 0
    while i < s.length
      if vowels.include?(s[i])
        break
      elsif s[i,2] == 'qu'
        i += 2
        break
      end
      i += 1
    end
    prefix = s[0,i]
    suffix = s[i, s.length - i]
    "#{suffix}#{prefix}ay"
  end
end

def translate(s)
  s.split.map { |word| translate_single(word) }.join(' ')
end
