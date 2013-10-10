# PubliSci

[![Build Status](https://travis-ci.org/wstrinz/publisci.png?branch=master)](https://travis-ci.org/wstrinz/publisci)

Full description goes here

Note: this software is under active development!

## Installation

```sh
gem install publisci
```

## Usage

#### DSL

Most of the gem's functions can be accessed through its DSL

```ruby
require 'publisci'
include PubliSci::DSL

# Specify input data
data do
  # use local or remote paths
  source 'https://github.com/wstrinz/publisci/raw/master/spec/csv/bacon.csv'

  # specify datacube properties
  dimension 'producer', 'pricerange'
  measure 'chunkiness'

  # set parser specific options
  option 'label_column', 'producer'
end

# Describe dataset
metadata do
  dataset 'bacon'
  title 'Bacon dataset'
  creator 'Will Strinz'
  description 'some data about bacon'
  date '1-10-2010'
end

# Send output to an RDF::Repository
#  can also use 'generate_n3' to output a turtle string
repo = to_repository

# run SPARQL queries on the dataset
PubliSci::QueryHelper.execute('select * where {?s ?p ?o} limit 5', repo)

# export in other formats
PubliSci::Writers::ARFF.new.from_store(repo)
```


#### Gem executable

Running the gem using the `publisci` executable will attempt to find and run
an triplifier for your input.

For example, the following

```sh
publisci https://github.com/wstrinz/publisci/raw/master/spec/csv/bacon.csv
```

Is equivalent to the DSL code

```ruby
require 'publisci'
include PubliSci::DSL

data do
  source 'https://github.com/wstrinz/publisci/raw/master/spec/csv/bacon.csv'
end

generate_n3
```

The API doc is online. For more code examples see the test files in
the source tree.

## Project home page

Information on the source tree, documentation, examples, issues and
how to contribute, see

  http://github.com/wstrinz/publisci

The BioRuby community is on IRC server: irc.freenode.org, channel: #bioruby.

## Cite

If you use this software, please cite

* [The Ruby Science Foundation. 2013. SciRuby: Tools for scientific computing in Ruby. http://sciruby.com.](http://sciruby.com)

and one of

* [BioRuby: bioinformatics software for the Ruby programming language](http://dx.doi.org/10.1093/bioinformatics/btq475)
* [Biogem: an effective tool-based approach for scaling up open source software development in bioinformatics](http://dx.doi.org/10.1093/bioinformatics/bts080)

## Biogems.info

This Biogem is published at (http://biogems.info/index.html#publisci)

## Copyright

Copyright (c) 2013 wstrinz. See LICENSE.txt for further details.

