require "is_bullshit/version"

class Object
  def bullshit?
    respond_to?(:empty?) ? !!empty? : !self
  end

  def legit?
    !bullshit?
  end

  def is_bullshit?
    bullshit?
  end

  def seems_legit?
    legit?
  end
end

class Integer
  def bullshit?
    zero?
  end
end

class String
  BS_REGEX = /\A[[:space:]]*\z/
  BS_STRINGS = %w(0 false nil null undefined)
  def bullshit?
    empty? || !!(BS_REGEX =~ self) || BS_STRINGS.any? { |s| casecmp(s).zero? }
  end
end
