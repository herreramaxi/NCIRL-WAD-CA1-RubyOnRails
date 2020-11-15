require 'nokogiri'
class ProductsController < ApplicationController
  def index
        
  path = File.join Rails.root, 'storage'
  xmlPath  = File.join(path, 'Products.xml')
  xsltPath  = File.join(path, 'ProductsTransformation.xsl')
  document = Nokogiri::XML(File.read(xmlPath))
  template = Nokogiri::XSLT(File.read(xsltPath))
  
  @transform= template.transform(document)
  
  end
end