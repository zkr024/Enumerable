module MyEnumerable
  def all?
    each do |value|
      return false unless yield(value)
    end
    true
  end

  def any?
    each do |value|
      return true if yield(value)
    end
    false
  end

  def filter
    result = []
    each do |value|
      result.push(value) if yield(value)
    end
    result
  end
end
