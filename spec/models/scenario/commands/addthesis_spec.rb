require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Addthesis do
  describe ".execute" do
   context "given preflabel, author, and abstract" do
      it "returns a new thesis object" do
        preflabel  = 'Thesis test'
        author     = 'Frank Feng'
        abstract   = 'Thesis abstract text'
        thesis = Dlibhydraworkflow::Addthesis.create_new(preflabel, author, abstract)
        expect(thesis).to be_truthy
      end
    end

#   context "given parent id, preflabel, author, abstract" do
#      it "returns a new thesis object within the collection" do
#        parent_id  = '73/ad/13/b5/73ad13b5-71c6-4a7f-a8f9-ff5adff12b13'
#        preflabel  = 'Thesis test'
#        author     = 'Frank Feng'
#        abstract   = 'Thesis abstract text'
#        thesis = Dlibhydraworkflow::Addthesis.create_new_within_collection(parent_id, preflabel, author, abstract)
#        expect(thesis).to be_truthy  
#      end
#    end
  end
end
