require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barrack = Barracks.new
  end



  it "has 500 HP substantial" do
    expect(@barrack.health_points).to eq(500)
  end

  it "should be take damage." do
    @barrack.damage(5)
      expect(@barrack.health_points).to eq(495)
  end

end

describe Footman do

  it "can damage a barrack only half of it's attack power!" do
    @footman = Footman.new
    @barrack = Barracks.new
      expect(@barrack).to receive(:damage).with(5)
      @footman.attack!(@barrack)
  end

  it "the damage power to a barrack should be rounded up when it's devided!" do
    @unit = Unit.new(1,11)
    @barrack = Barracks.new
      expect(@barrack).to receive(:damage).with(6)
      @unit.attack!(@barrack)
  end
end