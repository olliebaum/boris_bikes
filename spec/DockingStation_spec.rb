require 'DockingStation'
describe DockingStation do
  it { should respond_to(:release_bike) }
  it 'release_bike returns a Bike' do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  it "expects the bike to be working" do
    expect(subject.release_bike.working?).to eq true
  end
  it { should respond_to(:dock) }
  it "has a variable called bikes that is an array" do
    expect(subject.bikes).to be_an_instance_of(Array)
  end
  it "After using the dock method, stores the bike in the bikes variable" do
    bike_to_dock = Bike.new
    subject.dock(bike_to_dock)
    expect(subject.bikes.include? bike_to_dock).to eq true

  end
end
