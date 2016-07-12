require "dlibhydraworkflow/version"

module Dlibhydraworkflow
  extend ActiveSupport::Autoload

  module Vocab
    extend ActiveSupport::Autoload
    eager_autoload do
      autoload :Generic
    end
  end

  autoload_under 'processors/thesis' do
    autoload :Pdf
    autoload :Doc
    autoload :Docx
    autoload :Image
  end

  autoload_under 'processors/collection' do
    autoload :Collection
  end

end
