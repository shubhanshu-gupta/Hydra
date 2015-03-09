class DublinCoreAsset < ActiveFedora::RDF::Resource 
  property :title, predicate: RDF::DC.title
  property :creator, predicate: RDF::DC.creator
  property :contributor, predicate: RDF::DC.contributor
  property :date, predicate: RDF::DC.date
  property :subject, predicate: RDF::DC.subject
  property :relation, predicate: RDF::DC.relation
end