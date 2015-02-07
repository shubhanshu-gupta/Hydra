# Generated via
#  `rails generate active_fedora::model Book`
class Book < ActiveFedora::Base

  has_many :pages
  
  # Creating a #descMetadata method that returns the datastream. 
  #
 # has_metadata "descMetadata", type: BookMetadata
  


  # Uncomment the following lines to add an #attachment method that is a
  #   file_datastream:
  #
  # has_file_datastream "attachment"
  
  # "If you need to add additional attributes to the SOLR document, define the
  # #to_solr method and make sure to use super"
  #
  # def to_solr(solr_document={}, options={})
  #   super(solr_document, options)
  #   solr_document["my_attribute_s"] = my_attribute
  #   return solr_document
  # end

 # has_attributes :title, datastream: 'descMetadata', multiple: false
 # has_attributes :author, datastream: 'descMetadata', multiple: false

############the Book model has now indexed the author and title fields################

  property :title, predicate: ::RDF::DC.title, multiple: false do |index|
    index.as :stored_searchable
  end

  property :author, predicate: ::RDF::DC.creator, multiple: false do |index|
    index.as :stored_searchable
  end


end
