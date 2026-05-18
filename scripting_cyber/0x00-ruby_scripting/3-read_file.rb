#!/usr/bin/env ruby

require 'json'

def count_user_ids(path)
  JSON.parse(File.read(path)).map { |item| item['userId'] }.tally
end
