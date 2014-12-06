require 'minitest/autorun'
require 'ingress_info'

class TestIngressInfo < MiniTest::Unit::TestCase
  def test_that_checkpoints_can_include_zero
    set = IngressCycles.checkpointsForDate(Time.new(2014, 12, 02, 00, 00, 00), Date.new(2014, 12, 02))
    assert_equal "00:00", set[0]
  end
  
  def test_that_checkpoints_can_include_midnight
    set = IngressCycles.checkpointsForDate(Time.new(2014, 12, 02, 04, 00, 00), Date.new(2014, 12, 02))
    assert_equal "24:00", set[4]
  end
end