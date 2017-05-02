# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package FixedContents;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;

    $self->{normal} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 49)));
    $self->{high_bit_8} = $self->{_io}->ensure_fixed_contents(pack('C*', (255, 255)));

    return $self;
}

sub normal {
    my ($self) = @_;
    return $self->{normal};
}

sub high_bit_8 {
    my ($self) = @_;
    return $self->{high_bit_8};
}

1;
