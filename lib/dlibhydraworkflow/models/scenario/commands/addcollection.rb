module Dlibhydraworkflow

  class Addcollection

    # create a new collection
    def self.create_collection(preflabel)
      collection = Dlibhydra::Collection.create(:preflabel => preflabel)
      collection.save!
      collection
    end

    # Create a collection within an existing collection
    def self.create_collection_within_collection(parent_id, preflabel)
      parent = Dlibhydra::Collection.find(parent_id)

      collection = Dlibhydra::Collection.create(:preflabel => preflabel)
      parent.members << collection
      parent.save!
      collection.save!
      collection
    end  
  end

end
