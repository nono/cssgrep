#!/usr/bin/env ruby
# encoding: utf-8

begin
  require 'nokogiri'
rescue LoadError
  puts "Nokogiri is not installed: see http://nokogiri.org/tutorials/installing_nokogiri.html"
  exit 1
end

if ARGV.empty?
  puts "usage: #{$0} <selector> [FILE...]"
  exit
end

type = File.basename($0).start_with?("xpath") ? :xpath : :css
selector = ARGV.shift
ARGV.push '-' if ARGV.empty?
ARGV.each do |file|
  content = file == '-' ? $stdin.read : File.read(file)
  doc = Nokogiri::HTML.parse content
  puts doc.send(type, selector).map(&:to_s)
end
