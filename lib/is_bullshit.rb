require "is_bullshit/version"

class Object
  BULLSHIT_VALUES = {
    nil => true,
    [] => true,
    {} => true,
    0 => true,
    false => true,
    'undefined' => true,
    'false' => true,
    '' => true,
    '0' => true,
    'nil' => true,
    'null' => true,
  }

  def bullshit?
    !!BULLSHIT_VALUES[self]
  end

  def legit?
    !bullshit?
  end
  
  alias is_bullshit? bullshit?
  alias seems_legit? legit?
end
