$LOAD_PATH << File.join('../lib')

require 'proteus'

def quietly
  streams = STDOUT, STDERR
  on_hold = streams.collect { |stream| stream.dup }
  streams.each do |stream|
    stream.reopen(null_stream)
    stream.sync = true
  end
  yield
  ensure
    streams.each_with_index do |stream, i|
      stream.reopen(on_hold[i])
    end
end

def null_stream
  if RUBY_PLATFORM =~ /mswin/
    'NUL:'
  else
    '/dev/null'
  end
end
