require "dlibhydraworkflow/version"

module Dlibhydraworkflow
  extend ActiveSupport::Autoload

  module Vocab
    extend ActiveSupport::Autoload
    eager_autoload do
      autoload :Generic
    end
  end

  autoload_under 'processors/concerns' do
    autoload :GenericFile
    autoload :Jpg
  end

  autoload_under 'processors/collection' do
    autoload :Image
  end

end
