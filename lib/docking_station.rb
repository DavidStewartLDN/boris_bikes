require_relative './bike.rb'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    return raise "no bike available" unless @bikes != nil
    @bikes
  end

  def dock(bike)
    return raise "Docking station full" unless @bikes == nil
    @bikes = bike
  end

end
