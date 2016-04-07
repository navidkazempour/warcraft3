require_relative 'spec_helper'

describe Barracks do
  it "should start off with 500 lumber." do
    @barrack = Barracks.new(1000,80,400)
      expect(@barrack.lumber).to be <= 500
  end
end