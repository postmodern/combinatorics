#!/usr/bin/env ruby

root_dir = File.expand_path(File.join(File.dirname(__FILE__),'..'))
lib_dir = File.join(root_dir,'lib')
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require 'benchmark'
require 'combinatorics/derange'

Benchmark.bm do |b|
  (1..10).each do |n|
    array = (1..n).to_a

    b.report("n=#{n}") do
      array.derange { |s| }
    end
  end
end
