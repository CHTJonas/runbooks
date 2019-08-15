#!/usr/bin/env ruby

raise 'Process UID not root' unless Process.uid == 0
raise 'Must specify open/close as argument' unless ARGV.length == 1 && ( ARGV[0] == 'open' || ARGV[0] == 'close' )

UUIDs = ENV['UUIDs'].split(' ')
mappings = ENV['mappings'].split(' ')

raise 'Number of UUIDs not equal to number of mappings' unless UUIDs.length == mappings.length
exit(0) if UUIDs.length == 0

for i in 0..UUIDs.length-1
  if ARGV[0] == 'open'
    next if UUIDs[i] == 'nocrypt'
    @cmd = "cryptsetup luksOpen /dev/disk/by-uuid/#{UUIDs[i]} #{mappings[i]}"
  elsif ARGV[0] == 'close'
    next if UUIDs[i] == 'nocrypt'
    @cmd = "cryptsetup luksClose /dev/mapper/#{mappings[i]}"
  end
  system(@cmd)
end
