require "dlibhydraworkflow/version"

module Dlibhydraworkflow
  extend ActiveSupport::Autoload

  autoload_under 'models/scenario' do
    autoload :Scenario
    autoload :ScenarioLoader
    autoload :Fileprocessor
    autoload :Command
  end

  autoload_under 'models/scenario/commands' do
    autoload :Addwork
    autoload :Addthesis
    autoload :Addfileobject
  end

end
