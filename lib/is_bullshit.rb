require "is_bullshit/version"

class Object
  BULLSHIT_VALUES = [nil, [], {}, 0, false, 'undefined', 'false', '', '0', 'nil', 'null']

  def bullshit?
    BULLSHIT_VALUES.include? self
  end

  def legit?
     !bullshit?
  end
  
  alias is_bullshit? bullshit?
  alias seems_legit? legit?
end
