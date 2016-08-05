require 'dlibhydra'
require 'hydra/works'

module Dlibhydraworkflow

  class Addthesis

    def execute(parent, preflabel, author, abstract)
      thesis = Dlibhydra::Thesis.create(:preflabel => preflabel,:author => author, :abstract => abstract)
      parent.members << thesis
      parent.save!
      thesis.save!
    end

  end

end
