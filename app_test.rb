require 'minitest/autorun'
require "minitest/reporters" # optional
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new() # optional

require_relative './app'

class AppTest < MiniTest::Test

  def test_robot_place
    assert_equal([0,0,"NORTH"],place(0,0,"North"))
  end

  def test_robot_move_right
    place(0,0,"North")
    assert_equal([0,0,"EAST"],right)
  end

  def test_robot_move_left
    place(0,0,"North")
    assert_equal([0,0,"WEST"],left)
  end

  def test_robot_place_and_move
    place(0,0,"North")
    assert_equal([0,1,"NORTH"],move)
  end

  def test_robot_place_and_move_and_left
    place(0,0,"North")
    move
    assert_equal([0,1,"WEST"],left)
  end

  def test_robot_place_at_corner_and_move_outside_table
    place(5,5,"North")
    assert_equal([5,5,"NORTH"],move)
  end

end
