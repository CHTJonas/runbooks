raise 'Process UID not root' unless Process.uid == 0
raise 'Must specify import/export as argument' unless ARGV.length == 1 && ( ARGV[0] == 'import' || ARGV[0] == 'export' )

zpools = ENV['zpools'].split(' ')

exit(0) if zpools.length == 0

for i in 0..zpools.length
  cmd = "zpool #{ARGV[0]} #{zpools[i]}"
  system(cmd)
end
