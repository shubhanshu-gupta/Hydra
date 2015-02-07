# Generated via
#  `rails generate active_fedora:model Page`
class Page < ActiveFedora::Base
  
  # Define some properties to store:
  #
  property :title, predicate: ::RDF::DC.title do |index|
    index.as :stored_searchable, :facetable
  end
  property :creator, predicate: ::RDF::DC.creator do |index|
    index.as :stored_searchable, :facetable
  end
  property :contributor, predicate: ::RDF::DC.contributor do |index|
    index.as :stored_searchable, :facetable
  end
  property :description, predicate: ::RDF::DC.description do |index|
    index.as :stored_searchable
  end
  
  property :number, predicate: ::RDF::URI.new('http://opaquenamespace.org/hydra/pageNumber'), multiple: false do |index|
    index.as :stored_searchable
    index.type :integer
  end
  property :text, predicate: ::RDF::URI.new('http://opaquenamespace.org/hydra/pageText'), multiple: false do |index|
    index.as :stored_searchable
  end

belongs_to :book, predicate: ActiveFedora::RDF::Fcrepo::RelsExt.isPartOf

contains "pageContent"
  # Uncomment the following lines to add an #attachment method that is a file
  #
  # contains "attachment"
  
  #
  # If you need to add additional attributes to the SOLR document, extend the default indexer:
  #
  # def indexer
  #   MyApp::IndexingService
  # end
  #
  # This can go into app/services/my_app/indexing_service.rb
  # module MyApp
  #   class IndexingService < ActiveFedora::IndexingService
  #     def generate_solr_document
  #       super.tap do |solr_doc|
  #         solr_doc["my_attribute_s"] = object.my_attribute
  #       end
  #     end
  #   end
  # end
end
