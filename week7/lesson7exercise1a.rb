#  Write another program named 
#  lesson7exercise1a.rb that creates an object of the class defined in program 
#  lesson7exercise1.rb and then marshals it and then restores it.
require 'lesson7exercise1'

obj = Klass.new("hello")

File.open('klass', 'w+') do |file|
  Marshal.dump(obj, file)
end

File.open('klass') do |file|
  new_obj = Marshal.load(file)
  puts new_obj.say_hello
end