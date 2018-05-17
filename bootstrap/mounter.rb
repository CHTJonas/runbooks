raise 'Process UID not root' unless Process.uid == 0
raise 'Must specify mount/umount as argument' unless ARGV.length == 1 && ( ARGV[0] == 'mount' || ARGV[0] == 'umount' )

mappings = ENV['mappings'].split(' ')
mountpoints = ENV['mountpoints'].split(' ')

raise 'Number of mappings not equal to number of mountpoints' unless mappings.length == mountpoints.length

for i in 0..mappings.length
  if ARGV[0] == 'mount'
    @cmd = "mount /dev/mapper/#{mappings[i]} #{mountpoints[i]}"
  elsif AGRV[0] == 'close'
    @cmd = "umount #{mountpoints[i]}"
  end
  system(@cmd)
end
