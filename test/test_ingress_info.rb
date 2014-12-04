require 'minitest/autorun'
require 'ingress_info'

class TestIngressInfo < Minitest::Unit::TestCase
  def test_that_checkpoints_can_include_zero
    set = IngressCycles.checkpointsForDate(Time.new(2014, 12, 02, 00, 00, 00), Date.new(2014, 12, 02))
    assert_equal "00:00", set[0]
  end
end