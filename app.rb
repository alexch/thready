here = File.expand_path File.dirname(__FILE__)
$: << "#{here}/lib"

@foo = "bar"

require "thready"

Thread.new {
  sleep 100
}.run

Thready.list_threads
sleep 100

