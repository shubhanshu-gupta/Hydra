# Generated via
#  `rails generate active_fedora::model Book`
require 'spec_helper'

describe BookMetadata do
  it 'should have a title' do
    pending "Create a terminology for BookMetadata, then enable this test"
    subject.title = 'War and Peace'
    subject.title.should == ['War and Peace']
  end

end

