require 'test_helper'

class IsBullshitTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::IsBullshit::VERSION
  end

  def test_bullshit
    assert nil.bullshit?
    assert [].bullshit?
    assert Hash[].bullshit?
    assert 0.bullshit?
    assert false.bullshit?
    assert 'undefined'.bullshit?
    assert 'false'.bullshit?
    assert ''.bullshit?
    assert '0'.bullshit?
    assert 'nil'.bullshit?
    assert 'null'.bullshit?
  end

  def test_is_bullshit
    assert nil.is_bullshit?
    assert [].is_bullshit?
    assert Hash[].is_bullshit?
    assert 0.is_bullshit?
    assert false.is_bullshit?
    assert 'undefined'.is_bullshit?
    assert 'false'.is_bullshit?
    assert ''.is_bullshit?
    assert '0'.is_bullshit?
    assert 'nil'.is_bullshit?
    assert 'null'.is_bullshit?
  end

  def test_legit
    assert 'totally legit'.legit?
    assert 1.legit?
    assert Hash[foo: 'bar'].legit?

    refute nil.legit?
    refute [].legit?
    refute Hash[].legit?
    refute 0.legit?
    refute false.legit?
    refute 'undefined'.legit?
    refute 'false'.legit?
    refute ''.legit?
    refute '0'.legit?
    refute 'nil'.legit?
    refute 'null'.legit?
  end

  def seems_legit
    assert 'totally legit'.seems_legit?
    assert 1.seems_legit?
    assert Hash[foo: 'bar'].seems_legit?

    refute nil.seems_legit?
    refute [].seems_legit?
    refute {}.seems_legit?
    refute 0.seems_legit?
    refute false.seems_legit?
    refute 'undefined'.seems_legit?
    refute 'false'.seems_legit?
    refute ''.seems_legit?
    refute '0'.seems_legit?
    refute 'nil'.seems_legit?
    refute 'null'.seems_legit?
  end
end
