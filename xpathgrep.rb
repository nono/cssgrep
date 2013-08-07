#!/usr/bin/env ruby
# encoding: utf-8

begin
  require 'nokogiri'
rescue LoadError
  puts "Nokogiri is not installed: see http://nokogiri.org/tutorials/installing_nokogiri.html"
  exit 1
end

if ARGV.empty?
  puts "usage: xpathgrep.rb <selector> [FILE...]"
  exit
end

selector = ARGV.shift
ARGV.each do |file|
  content = file == '-' ? $stdin.read : File.read(file)
  doc = Nokogiri::HTML.parse content
  puts doc.xpath(selector).map(&:to_s)
end
