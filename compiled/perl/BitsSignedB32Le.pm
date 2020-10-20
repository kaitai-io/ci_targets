# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package BitsSignedB32Le;

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
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{a_num} = $self->{_io}->read_bits_int_le(31);
    $self->{a_bit} = $self->{_io}->read_bits_int_le(1);
    $self->{b_num} = $self->{_io}->read_bits_int_le(31);
    $self->{b_bit} = $self->{_io}->read_bits_int_le(1);
}

sub a_num {
    my ($self) = @_;
    return $self->{a_num};
}

sub a_bit {
    my ($self) = @_;
    return $self->{a_bit};
}

sub b_num {
    my ($self) = @_;
    return $self->{b_num};
}

sub b_bit {
    my ($self) = @_;
    return $self->{b_bit};
}

1;
