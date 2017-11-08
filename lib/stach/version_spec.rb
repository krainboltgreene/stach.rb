require "spec_helper"

RSpec.describe Stach::VERSION do
  it "should be a string" do
    expect(Stach::VERSION).to be_kind_of(String)
  end
end
