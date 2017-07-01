require "is_bullshit/version"
require "set"

class Object
  BULLSHIT_SET = Set.new([
    nil,
    [],
    {},
    0,
    false,
    "undefined",
    "false",
    "",
    "0",
    "nil",
    "null"
  ])

  def bullshit?
    BULLSHIT_SET.include? self
  end

  def legit?
    !bullshit?
  end
  
  alias is_bullshit? bullshit?
  alias seems_legit? legit?
end
