require 'test_helper'

class IsBullshitTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::IsBullshit::VERSION
  end

  [['bullshit', :bullshit], ['is_bullshit', :bullshit], ['legit', :legit], ['seems_legit', :legit]].each do |method, expectation|
    send :define_method, "test_#{method}".to_sym do
      
      # bullshit 
      [
        nil,
        [],
        Hash[],
        0,
        false,
        'undefined',
        'false',
        '',
        '0',
        'nil',
        'null',
        Float::INFINITY,
        (1.0/0),
        Float::NAN,
        (0.0/0),
        BigDecimal::INFINITY,
        (BigDecimal.new(1)/0),
        BigDecimal::NAN,
        (BigDecimal.new(0)/0)
      ].each do |what_is_this|
        if expectation == :bullshit
          assert what_is_this.send("#{method}?".to_sym)
        else
          refute what_is_this.send("#{method}?".to_sym)
        end
      end

      # legit stuff
      [
        'totally legit',
        1,
        Hash[foo: 'bar']
      ].each do |what_is_this|
        if expectation == :bullshit
          refute what_is_this.send("#{method}?".to_sym)
        else
          assert what_is_this.send("#{method}?".to_sym)
        end
      end
    end
  end

end