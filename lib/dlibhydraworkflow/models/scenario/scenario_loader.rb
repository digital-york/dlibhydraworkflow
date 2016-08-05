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
            
            scenario_id        = scenario_doc.xpath('/wf:workflow/wf:scenario/@id','wf'         => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_affiliate = scenario_doc.xpath('/wf:workflow/wf:scenario/@affiliate','wf'  => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_repository= scenario_doc.xpath('/wf:workflow/wf:scenario/@repository','wf' => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_model     = scenario_doc.xpath('/wf:workflow/wf:scenario/@model','wf'      => 'http://dlib.york.ac.uk/workflow').first.value
            scenario_abstract  = scenario_doc.xpath('/wf:workflow/wf:scenario/@abstract','wf'   => 'http://dlib.york.ac.uk/workflow').first.value
            fileprocessors = []

            fileprocessor_elements = scenario_doc.xpath('/wf:workflow/wf:scenario/wf:fileprocessor','wf'   => 'http://dlib.york.ac.uk/workflow')
            for fileprocessor_ele in fileprocessor_elements
              fileprocessor = Fileprocessor.new
              fileprocessor.mime = fileprocessor_ele.attr('mime')
              commands = []
              command_elts = fileprocessor_ele.children
              for command_elt in command_elts
                commands << command_elt.name
              end
              fileprocessor.commands = commands
              fileprocessors << fileprocessor
            end

            scenario.id        = scenario_id
            scenario.affiliate = scenario_affiliate
            scenario.repository= scenario_repository
            scenario.model     = scenario_model
            scenario.abstract  = scenario_abstract

            scenario.fileprocessors = fileprocessors
          else
            #puts Dir.pwd
            puts 'File does not exist -> ' + scenario_file_name
          end
         
        end

        scenario
      end
    end  

end
