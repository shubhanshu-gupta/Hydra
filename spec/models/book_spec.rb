# Generated via
#  `rails generate active_fedora::model Book`
require 'spec_helper'
require 'active_fedora/test_support'

describe Book do
  it_behaves_like 'An ActiveModel'
  include ActiveFedora::TestSupport
  subject { Book.new }

  describe "when persisted to fedora" do
    before { subject.save! }
    after { subject.destroy }
    it 'should exist' do
      Book.exists?(subject.pid).should be_true
    end
  end

  it 'should have a descMetadata datastream' do
    subject.descMetadata.should be_kind_of BookMetadata
  end

end
