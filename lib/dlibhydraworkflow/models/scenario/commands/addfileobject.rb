require 'dlibhydra'
require 'hydra/works'

module Dlibhydraworkflow

  class Addfileobject

    # create a new file object
    def self.create_file_object(local_file)
      fileset = Hydra::Works::FileSet.new
      Hydra::Works::AddFileToFileSet.call(fileset, open(local_file), 'original_file'.to_sym)
      fileset.save!
      fileset
    end

    # create a new file object for a given thesis
    def self.create_file_object_for_thesis(thesis_id, local_file)
      thesis  = Dlibhydra::Thesis.find(thesis_id)
      fileset = Hydra::Works::FileSet.new
      Hydra::Works::AddFileToFileSet.call(fileset, open(local_file), 'original_file'.to_sym)
      thesis.members << fileset
      thesis.save!
      fileset.save!
      fileset
    end

  end

end
