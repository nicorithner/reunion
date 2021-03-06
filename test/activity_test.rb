require "minitest/autorun"
require "minitest/pride"
require "./lib/activity"

class ActivityTest < Minitest::Test 

def test_it_exists
  activity = Activity.new("Brunch")
  assert_instance_of Activity, activity
end

def test_it_has_attributes
  activity = Activity.new("Brunch")

  assert_equal "Brunch", activity.name
  expected = {}
  assert_equal expected, activity.participants
end

def test_it_can_add_participants
  activity = Activity.new("Brunch")

  activity.add_participant("Maria", 20)
  expected = {"Maria" => 20}
  assert_equal expected, activity.participants
end

def test_it_can_have_total_cost
  activity = Activity.new("Brunch")

  activity.add_participant("Maria", 20)
  activity.add_participant("Luther", 40)
  
  assert_equal 60, activity.total_cost
end
end