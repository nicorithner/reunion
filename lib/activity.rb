class Activity
  attr_reader :name, :participants, :total_cost
  def initialize(name)
    @name = name
    @participants = {}
    @total_cost = 0
  end

  def add_participant(name, money)
    @participants[name] = money
    @total_cost += money
  end

end