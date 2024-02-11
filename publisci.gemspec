Gem::Specification.new do |s|
  s.name = "publisci"
  s.homepage = "http://github.com/wstrinz/publisci"
  s.license = "BSD 2-Clause"
  s.summary = %Q{Publish scientific results to the semantic web}
  s.description = %Q{A toolkit for publishing scientific results and datasets using RDF, OWL, and related technologies }
  s.email = "wstrinz@gmail.com"
  s.authors = ["Will Strinz", "Mila Frerichs"]
  s.version = "0.2.3"
  s.files = %w(README.md) + Dir.glob('lib/**/*.rb')
  s.add_dependency "rdf", "~>2"
  s.add_dependency "rdf-turtle", "~>2"
  s.add_dependency "rdf-rdfxml", "~>2"
  s.add_dependency "sparql", "~>2"
  s.add_dependency "json-ld", "~>2"
end
