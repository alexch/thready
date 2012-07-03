require "thready/version"

Signal.trap('QUIT') do
  puts
  Thready.list_threads
end

puts "Thready installed. Press Ctrl-\\ to see the current threads."

module Thready

  def self.list_threads
    threads = Thread.list
    puts "#{Time.now}\t#{threads.size} thread#{'s' if threads.size != 1}:"
    threads.each do |t|
      puts

      data = [
        "id: #{t.object_id}",
        "status: #{t.status}",
        #t.backtrace.first
      ]
      puts data.join("\t")

      puts "\t" + t.backtrace.join("\n\t") if t.backtrace

      if t.alive? and false
        t.set_trace_func proc { |event, file, line, id, binding, classname|
          t.set_trace_func(nil)
          printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
          binding.eval("instance_variables").each do |var|
            value = binding.eval("instance_variable_get(:#{var})")
            puts "\t@#{var} is #{value.inspect}"
          end
        }
      end

    end
  end

end
