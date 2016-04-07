require_relative 'spec_helper'

describe Unit do
  it "a dead unit can not attack" do
    @unit_d = Unit.new(0,0)
    @unit_a = Footman.new
      expect{@unit_d.attack!(@unit_a)}.to raise_error StandardError
  end


  it "alive Units can not attack dead Units" do
    @unit_d = Unit.new(0,0)
    @unit_a = Footman.new
      expect(@unit_a.attack!(@unit_d)).to eq("It's already dead!")    
  end
end