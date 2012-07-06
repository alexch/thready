here = File.expand_path File.dirname(__FILE__)
$: << "#{here}/lib"

@foo = "bar"

require "thready"

Thread.new {
  @bar = 22
  x = 10
  sleep 100
}.run

Thread.new {
  y = 20
  sleep 100
}


sleep 100
