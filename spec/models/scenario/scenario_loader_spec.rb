#require 'spec_helper'

describe Dlibhydraworkflow::ScenarioLoader do
  describe ".load_scenario" do
   context "given nothing" do
      it "returns empty object" do
        scenario = Dlibhydraworkflow::ScenarioLoader.load_scenario(nil)

        expect(scenario).to be_truthy
        expect(scenario.id).to be_nil
        expect(scenario.affiliate).to be_nil
        expect(scenario.repository).to be_nil
        expect(scenario.model).to be_nil
        expect(scenario.parent).to be_nil
        expect(scenario.abstract).to be_nil
        expect(scenario.preprocessors).to be_nil
        expect(scenario.postprocessors).to be_nil        
        expect(scenario.fileprocessors).to be_nil
      end
    end

    context "given scenario file name" do
      it "returns Scenario object" do
        filename = 'lib/dlibhydraworkflow/gwl/scenarios/Scenario-York-Fedora-Thesis.xml'
        scenario = Dlibhydraworkflow::ScenarioLoader.load_scenario(filename)

        expect(scenario).to be_truthy
        expect(scenario.id).to eql('York-Fedora-Thesis-Object')
        expect(scenario.affiliate).to eql('York')
        expect(scenario.repository).to eql('Fedora')
        expect(scenario.model).to eql('Thesis')
        expect(scenario.abstract).to eql('false')
        # test file processors
        fileprocessors = scenario.fileprocessors
        expect(fileprocessors.size).to eql(4)
        for fileprocessor in fileprocessors
          expect(fileprocessor.mime).should_not be_nil
          # test commands for current file processor
          commands = fileprocessor.commands
          expect(commands.size).to be >= 1
          for command in commands
            expect(command.name).should_not be_nil
          end 
        end
      end
    end
  end
end
