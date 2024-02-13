# This is temporary, just to help w/ development so I don't have to rewrite r2rdf.rb to be
# a standard gem base yet. Also load s the files instead of require for easy reloading
require 'tempfile'
require 'fileutils'
require 'csv'

require 'rdf'
require 'sparql'
require 'sparql/client'
require 'rdf/turtle'
require 'rdf/rdfxml'
require 'json/ld'

require 'rserve'
require 'rest-client'

begin
	require 'spira'
rescue LoadError
	puts "can't load spira; orm unavailable"
end

module PubliSci
  autoload :CustomPredicate, 'publisci/mixins/custom_predicate'
  autoload :Registry, 'publisci/mixins/registry'
  autoload :Vocabulary, 'publisci/mixins/vocabulary'

  autoload :Dataset, 'publisci/dataset/dataset'
  autoload :Interactive, 'publisci/dataset/interactive'

  autoload :Prov, 'publisci/metadata/prov/prov'

  autoload :Metadata, 'publisci/metadata/metadata'

  autoload :DSL, 'publisci/dsl/dsl'

  autoload :RDFParser, 'publisci/parser'
  autoload :Analyzer, 'publisci/analyzer'
  autoload :Query, 'publisci/query/query_helper'

  autoload :Readers, 'publisci/readers/base'
  autoload :Writers, 'publisci/writers/base'

end
