require 'dlibhydra'
require 'hydra/works'

module Dlibhydraworkflow

  class Addfileobject

    def execute(parent, local_file)
      fileset = Hydra::Works::FileSet.new
      Hydra::Works::AddFileToFileSet.call(fileset, open(local_file), 'original_file'.to_sym)
      parent.members << fileset
      parent.save!
      fileset.save!
    end

  end

end
