require 'is_bullshit/version'

class Object
  @@bullshit_values = {
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
    'null' => true
  }

  def bullshit?
    !!@@bullshit_values[self]
  end

  def legit?
    !bullshit?
  end

  def clearly_bullshit
    @@bullshit_values[self] = true unless @@bullshit_values.key?(self)
  end

  alias is_bullshit? bullshit?
  alias seems_legit? legit?
  alias is_clearly_bullshit clearly_bullshit
end
