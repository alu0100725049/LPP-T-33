require 'lib/complex'
require 'test/unit'

class TestComplex < Test::Unit::TestCase
  def setup
    @a = Complex.new(3,-1)
    @b = Complex.new(2,2)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("(0,0)", @a.to_s)
    assert_equal("(5,5)", (@b*5).to_s)
    assert_equal("(-1,-1)", (-@b).to_s)
    assert_equal("(5,1)", (@a+@b).to_s)
    assert_equal("(1,-3)", (@a-@b).to_s)
    assert_equal("(8,4)", (@a*@b).to_s)
    assert_equal("(0.5,-1)", (@a/@b).to_s)
    assert_equal("(6,-2)", (2*@a).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Complex.new('1','1')}
  end
  def test_failure
    assert_equal("(5,5)", (@a * 5).to_s, "Producto escalar")
  end


end
