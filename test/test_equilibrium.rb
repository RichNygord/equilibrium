require 'helper'

class TestEquilibrium < Test::Unit::TestCase
  def test_equilibrium
    assert_equal -1, [].equilibrium
    assert_equal  0, [1].equilibrium
    assert_equal -1, [1,1].equilibrium
    assert_equal  1, [1,1,1].equilibrium
    assert_equal  0, [0,0,0].equilibrium
    assert_equal  3, [-7, 1, 5, 2, -4, 3, 0].equilibrium
    assert_equal  6, [-7, 1, 5, 2, -4, 3, 1].equilibrium
    
    exception = assert_raise(NoMethodError) { 9.equilibrium }
    assert_match /undefined method `equilibrium'/, exception.message
  end
 
  def test_equilibrium_all
    assert_equal [0,1,2], [0,0,0].equilibrium_all
    assert_equal [3,6], [-7, 1, 5, 2, -4, 3, 0].equilibrium_all
    assert_equal [6],   [-7, 1, 5, 2, -4, 3, 1].equilibrium_all
    assert_equal [],    [].equilibrium_all
    assert_equal [0],   [1].equilibrium_all
    assert_equal [],    [1,1].equilibrium_all
    assert_equal [1],   [1,1,1].equilibrium_all
    
    exception = assert_raise(NoMethodError) { "9".equilibrium_all }
    assert_match /undefined method `equilibrium_all'/, exception.message
  end
end

