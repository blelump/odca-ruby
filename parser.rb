$LOAD_PATH.unshift(File.expand_path('lib', File.dirname(__FILE__)))
require 'bundler'
Bundler.require

filename = ARGV[0]
raise RuntimeError.new, 'Please provide input file as an argument' unless filename

require 'csv'
require 'odca/big_parser'

OUTPUT_DIR = 'output'.freeze
records = CSV.read(filename, col_sep: ';')
Odca::BigParser.new(records, OUTPUT_DIR).call
