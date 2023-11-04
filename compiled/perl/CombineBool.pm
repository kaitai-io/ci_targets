# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package CombineBool;

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

    $self->{bool_bit} = $self->{_io}->read_bits_int_be(1);
}

sub bool_calc {
    my ($self) = @_;
    return $self->{bool_calc} if ($self->{bool_calc});
    $self->{bool_calc} = 0;
    return $self->{bool_calc};
}

sub bool_calc_bit {
    my ($self) = @_;
    return $self->{bool_calc_bit} if ($self->{bool_calc_bit});
    $self->{bool_calc_bit} = (1 ? $self->bool_calc() : $self->bool_bit());
    return $self->{bool_calc_bit};
}

sub bool_bit {
    my ($self) = @_;
    return $self->{bool_bit};
}

1;
