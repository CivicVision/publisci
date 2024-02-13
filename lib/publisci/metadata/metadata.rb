module PubliSci
  class Metadata
    autoload :DSL, 'publisci/dsl/metadata_dsl'
    extend PubliSci::Registry
  end
end
