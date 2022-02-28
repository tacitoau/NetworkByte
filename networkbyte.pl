use strict;
my $ip = shift;
die('ERROR: NO IP\n') unless $ip;
my @octets = split(/\./, $ip);
print "Network-byte of $ip is: 0x";
foreach my $octet(@octets){
    $octet =~ s/$octet/sprintf("%X", $octet)/eg;
    print $octet;
}
print "\n";
}
