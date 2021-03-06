#  5. [Difficulty level: MEDIUM] Write a one-line Ruby
#  script that displays on the screen all the files in the
#  current folder as well as everything in all its sub
#  folders, in sorted order. Make use of Dir.glob
#  method:
#  http://www.rubydoc.org/core/classes/Dir.html#M002347
#  as follows:
#  
#  Dir.glob('**/*')
#  
#  Name this program inventory.rb. Create an
#  inventory file by typing the following at the command
#  prompt:
#  
#  ruby inventory.rb > old-inventory.txt
#  
#  After a few days, when some files would have been
#  added / deleted from this folder, run the program
#  again like:
#  
#  ruby inventory.rb > new-inventory.txt
#  
#  Now, write another Ruby script that displays on the
#  screen all the files that have been added in this
#  folder since the time the old-inventory.txt was
#  created.


def get_new_files(old_inventory_file_name, new_inventory_file_name)
  File.readlines(new_inventory_file_name) - File.readlines(old_inventory_file_name)
end

puts get_new_files('old-inventory.txt', 'new-inventory.txt')
