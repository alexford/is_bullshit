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
    Float::INFINITY => true,
    BigDecimal::INFINITY => true
  }

  def bullshit?
    !!BULLSHIT_VALUES[self] or (self.nan? if [Float, BigDecimal].member? self.class)
  end

  def legit?
    !bullshit?
  end
  
  alias is_bullshit? bullshit?
  alias seems_legit? legit?
end
