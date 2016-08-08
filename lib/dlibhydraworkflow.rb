require "dlibhydraworkflow/version"
require 'logger'

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

  # Configure fedora through yaml file
  def self.configure_with(config_file_path)
    logger = Logger.new('dlibhydraworkflow.log')
    begin
      config = YAML::load(IO.read(config_file_path))
    rescue Errno::ENOENT
      logger.warn("YAML configuration file couldn't be found. Using defaults."); return
    rescue Exception
      logger.warn("Cannot load YAML configuration. Using defaults."); return
    end

    configure(config)
  end

  configure_with('config/fedora.yml')
  configure_with('config/solr.yml')

  class << self
    ENV['environment'] = 'development'
  end

end
