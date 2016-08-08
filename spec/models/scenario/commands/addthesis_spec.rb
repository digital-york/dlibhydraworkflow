require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Addthesis do
  describe ".execute" do
   context "given parameters" do
      it "returns thesis object" do
#        collection = Dlibhydra::Collection.find('73/ad/13/b5/73ad13b5-71c6-4a7f-a8f9-ff5adff12b13')
        preflabel  = 'Thesis test'
        author     = 'Frank Feng'
        abstract   = 'Thesis abstract text'
        thesis = Dlibhydraworkflow::Addthesis.execute(nil, preflabel, author, abstract)
puts thesis.inspect
      end
    end
  end
end
