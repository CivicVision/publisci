require 'publisci/dataset/dataset_for'

module PubliSci
  class Dataset
    autoload :DSL, 'publisci/dsl/dataset_dsl'
    autoload :Configuration, 'publisci/dataset/configuration'
    autoload :DataCube, 'publisci/dataset/data_cube'
    extend PubliSci::Interactive
    extend PubliSci::Registry

    def self.configuration
      @config ||= Dataset::Configuration.new
    end

  end
end
