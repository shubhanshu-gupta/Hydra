# Generated via
#  `rails generate active_fedora::model Book`
class BookMetadata < ActiveFedora::OmDatastream

set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.author(index_as: :stored_searchable)
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end

  def prefix
    # set a datastream prefix if you need to namespace terms that might occur in multiple data streams 
    ""
  end

end

  # Define a terminology for parsing this XML document
  # See: https://github.com/projecthydra/om/wiki/Tame-your-XML-with-OM
  #
  # set_terminology do |t|
  #   t.root(path: "fields")
  #   t.title
  #   t.author
  # end


  # Describe what an empty document looks like
  #
  # def self.xml_template
  #   Nokogiri::XML.parse("<fields/>")
  # end
  #


  # "If you need to add additional attributes to the SOLR document, define the
  # #to_solr method and make sure to use super"
  #
  # def to_solr(solr_document={}, options={})
  #   super(solr_document, options)
  #   solr_document["my_attribute_s"] = my_attribute
  #   return solr_document
  # end


