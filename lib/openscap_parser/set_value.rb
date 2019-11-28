# frozen_string_literal: true
require 'openscap_parser/xml_node'

module OpenscapParser
  class SetValue < XmlNode
    def idref
      @idref ||= @parsed_xml['idref']
    end

    def text
      @text ||= @parsed_xml.text
    end

    def to_h
      { :idref => idref, :text => text }
    end
  end
end