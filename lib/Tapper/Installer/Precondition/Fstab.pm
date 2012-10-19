package Tapper::Installer::Precondition::Fstab;
BEGIN {
  $Tapper::Installer::Precondition::Fstab::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Installer::Precondition::Fstab::VERSION = '4.1.0';
}

use strict;
use warnings;

use Moose;
use YAML;
use File::Basename;
extends 'Tapper::Installer::Precondition';




sub install {
        my ($self, $precond) = @_;

        my ($filename, $path, $retval);

        my $basedir = $self->cfg->{paths}{base_dir};
        my $line = $precond->{line};

        my $cmd = '(echo "" ; echo "# precond::fstab" ; echo "'.$line.'" ) >> '.$basedir.'/etc/fstab';

        $self->log->debug($cmd);

        system($cmd) == 0 or return ("Could not patch /etc/fstab: $!");
        return 0;
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Installer::Precondition::Fstab

=head1 SYNOPSIS

 use Tapper::Installer::Precondition::Fstab;

=head1 NAME

Tapper::Installer::Precondition::Fstab - Insert a line into /etc/fstab

=head1 FUNCTIONS

=head2 install

Install a file from an nfs share.

@param hash reference - contains all precondition information

@return success - 0
@return error   - error string

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

