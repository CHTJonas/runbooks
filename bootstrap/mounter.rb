raise 'Process UID not root' unless Process.uid == 0
raise 'Must specify mount/umount as argument' unless ARGV.length == 1 && ( ARGV[0] == 'mount' || ARGV[0] == 'umount' )

mappings = ENV['mappings'].split(' ')
mountpoints = ENV['mountpoints'].split(' ')

raise 'Number of mappings not equal to number of mountpoints' unless mappings.length == mountpoints.length
exit(0) if mappings.length == 0

for i in 0..mappings.length
  if ARGV[0] == 'mount'
    next if mountpoints[i] == 'none'
    @cmd = "mount /dev/mapper/#{mappings[i]} #{mountpoints[i]}"
  elsif ARGV[0] == 'close'
    next if mountpoints[i] == 'none'
    @cmd = "umount #{mountpoints[i]}"
  end
  system(@cmd)
end
