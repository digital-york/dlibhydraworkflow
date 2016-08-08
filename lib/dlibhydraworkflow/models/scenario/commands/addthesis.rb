require 'dlibhydra'
require 'hydra/works'

module Dlibhydraworkflow

  class Addthesis
    # create a new thesis object
    def self.create_new(preflabel, author, abstract)
      thesis = Dlibhydra::Thesis.create(:preflabel => preflabel,:author => author, :abstract => abstract)
      thesis.save!
      thesis
    end

    # create a new thesis object under a given collection
    def self.create_new_within_collection(parent_id, preflabel, author, abstract)
      parent = Dlibhydra::Collection.find(parent_id)
      thesis = Dlibhydra::Thesis.create(:preflabel => preflabel,:author => author, :abstract => abstract)
      parent.members << thesis
      parent.save!
      thesis.save!
      thesis
    end

  end

end
