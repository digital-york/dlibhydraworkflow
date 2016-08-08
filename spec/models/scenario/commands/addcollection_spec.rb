require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Addcollection do
  describe ".create_collection" do
   context "given preflabel" do
      it "returns a new collection" do
        preflabel  = 'collection test'
        collection = Dlibhydraworkflow::Addcollection.create_collection(preflabel)
        expect(collection).to be_truthy
      end
    end
  end

#  describe ".create_collection_within_collection" do
#   context "given existing collection id and preflabel" do
#      it "returns a new collection within the given collection" do
#        existing_collection_id = '73/ad/13/b5/73ad13b5-71c6-4a7f-a8f9-ff5adff12b13'
#        preflabel              = 'collection test'
#        collection             = Dlibhydraworkflow::Addcollection.create_collection_within_collection(existing_collection_id, preflabel)
#        expect(collection).to be_truthy
#      end
#    end
#  end

end
