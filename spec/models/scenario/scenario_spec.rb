require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Scenario do
  describe ".getfileprocessors" do
   context "given nothing" do
      it "returns nil" do
        expect(Dlibhydraworkflow::Scenario.getfileprocessors).to eql(nil)
      end
    end
  end
end
