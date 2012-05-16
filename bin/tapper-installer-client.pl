#! /usr/bin/perl
# PODNAME: tapper-installer-client
# ABSTRACT: cmdline frontend to Installer

use warnings;
use strict;
use Log::Log4perl;
use Tapper::Installer::Base;

BEGIN {
        Log::Log4perl::init('/etc/log4perl.cfg');
}


my $client = new Tapper::Installer::Base;
$client->system_install("");



__END__
=pod

=encoding utf-8

=head1 NAME

tapper-installer-client - cmdline frontend to Installer

=head1 SYNOPSIS

tapper-installer-client.pl

=head1 DESCRIPTION

This program is the start script of the Tapper::Installer project. It calls
Tapper::Installer::Base which cares for the rest.

=head1 NAME

tapper-installer-client.pl - control the installation and setup of an automatic test system

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

