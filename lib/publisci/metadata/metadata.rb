module PubliSci
  class Metadata
    autoload :Generator, 'publisci/metadata/generator'
    autoload :DSL, 'publisci/dsl/metadata_dsl'
    extend PubliSci::Registry
  end
end
