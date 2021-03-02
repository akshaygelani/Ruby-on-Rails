class StringServices

  def self.calculate_vowels(value)
    value.count('aeiou')
  end

  def self.check_symbol(value)
    stack = []
    value.chars.each do |c|
      case c
      when '('
        stack.push '('
      when '{'
        stack.push '{'
      when '['
        stack.push '['
      when ')'
        return false if stack.empty? || stack.pop != '('
      when '}'
        return false if stack.empty? || stack.pop != '{'
      when ']'
        return false if stack.empty? || stack.pop != '['

      end
    end
    true
  end

  def self.find_bad_words(value)
    array = ['bad','poor','dirty','stupid']
    array.each do |x|
      return true if value.include? x
    end
    false
  end
end