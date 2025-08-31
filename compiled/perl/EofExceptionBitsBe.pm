# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package EofExceptionBitsBe;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{pre_bits} = $self->{_io}->read_bits_int_be(7);
    $self->{fail_bits} = $self->{_io}->read_bits_int_be(18);
}

sub pre_bits {
    my ($self) = @_;
    return $self->{pre_bits};
}

sub fail_bits {
    my ($self) = @_;
    return $self->{fail_bits};
}

1;
