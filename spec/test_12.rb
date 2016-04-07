require_relative 'spec_helper'

describe Unit do
  it "unit is not alive if health poin is zero!" do
    @unit = Unit.new(5,5)
    @footman = Footman.new
      @footman.attack!(@unit)
      expect(@unit.dead?).to be_truthy
  end 
end