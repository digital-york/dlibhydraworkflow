require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Scenario do
  describe ".getfileprocessors" do
   context "given nothing" do
      it "returns nil" do
        p = Dlibhydraworkflow::Scenario.getfileprocessors
        # To fix: should_not be_nil is NOT working
        expect(p).should_not be_nil
      end
    end
  end
end
