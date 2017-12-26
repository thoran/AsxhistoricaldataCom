# tc_Month_self.of

# 20120120
# 0.9.2

# Changes since 0.8
# 1. Version number bump to 0.9.0.  
# 0/1
# 2. Version number bump to 0.9.1.  
# 1/2
# 3. Version number bump to 0.9.2.  

if __FILE__ == $0
  require 'minitest/autorun'
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  require 'Month/Constants'
  require 'Month/self.of'
  require 'Month/_equals'
end

class TC_Month_self_of < MiniTest::Unit::TestCase
  
  def test_long_capitalized
    assert_equal true, Month.of('January') == Month.new(1)
    assert_equal true, Month.of('February') == Month.new(2)
    assert_equal true, Month.of('March') == Month.new(3)
    assert_equal true, Month.of('April') == Month.new(4)
    assert_equal true, Month.of('May') == Month.new(5)
    assert_equal true, Month.of('June') == Month.new(6)
    assert_equal true, Month.of('July') == Month.new(7)
    assert_equal true, Month.of('August') == Month.new(8)
    assert_equal true, Month.of('September') == Month.new(9)
    assert_equal true, Month.of('October') == Month.new(10)
    assert_equal true, Month.of('November') == Month.new(11)
    assert_equal true, Month.of('December') == Month.new(12)
  end
  
  def test_long_downcase
    assert_equal true, Month.of('january') == Month.new(1)
    assert_equal true, Month.of('february') == Month.new(2)
    assert_equal true, Month.of('march') == Month.new(3)
    assert_equal true, Month.of('april') == Month.new(4)
    assert_equal true, Month.of('may') == Month.new(5)
    assert_equal true, Month.of('june') == Month.new(6)
    assert_equal true, Month.of('july') == Month.new(7)
    assert_equal true, Month.of('august') == Month.new(8)
    assert_equal true, Month.of('september') == Month.new(9)
    assert_equal true, Month.of('october') == Month.new(10)
    assert_equal true, Month.of('november') == Month.new(11)
    assert_equal true, Month.of('december') == Month.new(12)
  end
  
  def test_short_capitalized
    assert_equal true, Month.of('Jan') == Month.new(1)
    assert_equal true, Month.of('Feb') == Month.new(2)
    assert_equal true, Month.of('Mar') == Month.new(3)
    assert_equal true, Month.of('Apr') == Month.new(4)
    assert_equal true, Month.of('May') == Month.new(5)
    assert_equal true, Month.of('Jun') == Month.new(6)
    assert_equal true, Month.of('Jul') == Month.new(7)
    assert_equal true, Month.of('Aug') == Month.new(8)
    assert_equal true, Month.of('Sep') == Month.new(9)
    assert_equal true, Month.of('Oct') == Month.new(10)
    assert_equal true, Month.of('Nov') == Month.new(11)
    assert_equal true, Month.of('Dec') == Month.new(12)
  end
  
  def test_short_downcase
    assert_equal true, Month.of('jan') == Month.new(1)
    assert_equal true, Month.of('feb') == Month.new(2)
    assert_equal true, Month.of('mar') == Month.new(3)
    assert_equal true, Month.of('apr') == Month.new(4)
    assert_equal true, Month.of('may') == Month.new(5)
    assert_equal true, Month.of('jun') == Month.new(6)
    assert_equal true, Month.of('jul') == Month.new(7)
    assert_equal true, Month.of('aug') == Month.new(8)
    assert_equal true, Month.of('sep') == Month.new(9)
    assert_equal true, Month.of('oct') == Month.new(10)
    assert_equal true, Month.of('nov') == Month.new(11)
    assert_equal true, Month.of('dec') == Month.new(12)
  end
  
  def test_crap
    assert_equal nil, Month.of('random')
    assert_equal nil, Month.of(12)
  end
  
end
