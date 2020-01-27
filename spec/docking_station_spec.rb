# Define filenmae to run test on
require "docking_station"
describe DockingStation do
  context "check if release bike method exists" do
    it { is_expected.to respond_to(:release_bike)}
  end
80
  context "should be able to dock a bike" do
    it { is_expected.to respond_to(:dock).with(1).argument }
  end
  context "can show" do
    it "bike that has been docked" do
      expect(subject).to respond_to(:bikes)
    end
  end
  context "can return" do
    it "a singular bike that has been docked" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end
  end
  it "returns a stored bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq(bike)
  end
  it "should not release bike if empty" do
    expect {subject.release_bike}.to raise_error
  end
  it "should not allow bike to dock if docking station is full" do
    bike = Bike.new
    subject.dock(bike)
    expect {subject.dock(bike)}.to raise_error
  end
  # it "Check if docking staion creates error when full"

end
# context "dock bike to docking station and update attribute of docking station instance"
