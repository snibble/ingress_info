require 'minitest/autorun'
require 'ingress_info'

class TestIngressInfo < MiniTest::Unit::TestCase
  def test_that_checkpoints_are_calculated_correctly
    set = IngressCycles.checkpoints_for_date(Time.new(2014, 12, 02, 01, 00, 00), Date.new(2014, 12, 03))
    assert_equal [Time.new(2014, 12, 03, 02, 00),
                  Time.new(2014, 12, 03, 07, 00),
                  Time.new(2014, 12, 03, 12, 00),
                  Time.new(2014, 12, 03, 17, 00),
                  Time.new(2014, 12, 03, 22, 00)], set
  end

  def test_that_checkpoints_can_include_zero
    set = IngressCycles.checkpoints_for_date(Time.new(2014, 12, 02, 00, 00, 00), Date.new(2014, 12, 02))
    assert_equal Time.new(2014, 12, 02, 0, 0), set[0]
  end
  
  def test_that_checkpoints_can_include_midnight
    set = IngressCycles.checkpoints_for_date(Time.new(2014, 12, 02, 04, 00, 00), Date.new(2014, 12, 02))
    assert_equal Time.new(2014, 12, 02, 24, 00), set[4]
  end

  def test_end_time_calculated_correctly
    assert_equal Time.new(2015, 01, 07, 11, 00, 00), IngressCycles.cycle_end_time(Time.new(2014, 12, 31, 04, 00, 00))
  end
end