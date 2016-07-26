require "dlibhydraworkflow/version"

module Dlibhydraworkflow
  extend ActiveSupport::Autoload

  autoload_under 'models/scenario' do
    autoload :Scenario
    autoload :ScenarioLoader
  end

end
