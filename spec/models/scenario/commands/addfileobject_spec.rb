require 'spec_helper'
require 'dlibhydraworkflow'

describe Dlibhydraworkflow::Addfileobject do
  describe ".create_file_object" do
   context "given local file name" do
      it "returns a new file object" do
        filename   = 'test/pdf-sample.pdf'
        fileobj = Dlibhydraworkflow::Addfileobject.create_file_object(filename)
        expect(fileobj).to be_truthy
      end
    end
  end

#  describe ".create_file_object_for_thesis" do
#   context "given thesis id and local file name" do
#      it "returns a new file object for given thesis" do
#        thesis_id     = '02/b8/87/5e/02b8875e-5ff5-4909-ba07-00d9626d2583'
#        filename      = 'test/pdf-sample.pdf'
#        fileobj       = Dlibhydraworkflow::Addfileobject.create_file_object_for_thesis(thesis_id, filename)
#        # puts fileobj.member_of
#        expect(fileobj).to be_truthy
#      end
#    end
#  end

end
