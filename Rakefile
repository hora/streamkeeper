# frozen_string_literal: true

require 'yaml'
require_relative 'media_parser'

secrets = YAML.load_file '_secrets.yml'

task :parse_lists do
  puts 'Parsing media lists'

  puts 'Parsing watch list to _data/to_watch.yml'
  watch_parser = MediaParser.new(secrets['watch_path'])
  File.open('_data/to_watch.yml', 'w') { |file| file.write watch_parser.parse }

  puts 'Parsing read list to _data/to_read.yml'
  read_parser = MediaParser.new(secrets['read_path'])
  File.open('_data/to_read.yml', 'w') { |file| file.write read_parser.parse }
end
