module Dlibhydraworkflow

    # puts 'module Dlibhydraworkflow.scenario is loaded'

    class Scenario
       attr_accessor :id, :affiliate, :repository, :model, :parent, :abstract, :preprocessors, :postprocessors, :fileprocessors
       
       def self.getfileprocessors   
          r = nil      
       end


    end  
end
