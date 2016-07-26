require 'nokogiri'

module Dlibhydraworkflow

    class ScenarioLoader
      PREFIX = 'Scenario-'
      EXT    = '.xml'    
   
      def self.load_scenario(scenario_file_name)
        scenario = Dlibhydraworkflow::Scenario.new       

        if !scenario_file_name.nil?
          
          if File.exist?(scenario_file_name)
            scenario_doc = File.open(scenario_file_name) { |f| Nokogiri::XML(f) }
            
            scenario_id        = scenario_doc.xpath('/wf:workflow/wf:scenario/@id','wf'       => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_model     = scenario_doc.xpath('/wf:workflow/wf:scenario/@model','wf'    => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_abstract  = scenario_doc.xpath('/wf:workflow/wf:scenario/@abstract','wf' => 'http://dlib.york.ac.uk/workflow').first.value

            scenario.id        = scenario_id
            scenario.model     = scenario_model
            scenario.abstract  = scenario_abstract
          else
            #puts Dir.pwd
            puts 'File does not exist -> ' + scenario_file_name
          end
         
        end

        scenario
      end


    end  

end
