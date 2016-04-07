require_relative 'spec_helper'

describe SiegeEngine do
  
  before :each do
    @siegeengine = SiegeEngine.new
  end

  it "should be a Unit" do
    expect(@siegeengine).to be_a_kind_of(Unit)
  end

  it "can not hurt other Units" do
    enemy = Footman.new
    h = enemy.health_points
    @siegeengine.attack!(enemy)
    expect(enemy.health_points).to eq(h)
  end

  it "can attack other SiegeEngines" do
    enemy = SiegeEngine.new
    h = enemy.health_points
    @siegeengine.attack!(enemy)
    expect(enemy.health_points).to be < h
  end

  it "can damage Barracks 2X stronger than their AP" do
    barrack = Barracks.new
    expect(barrack).to receive(:damage).with(100)    
    @siegeengine.attack!(barrack)
  end
end