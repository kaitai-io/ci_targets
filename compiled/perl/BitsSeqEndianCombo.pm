# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package BitsSeqEndianCombo;

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

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{be1} = $self->{_io}->read_bits_int_be(6);
    $self->{be2} = $self->{_io}->read_bits_int_be(10);
    $self->{le3} = $self->{_io}->read_bits_int_le(8);
    $self->{be4} = $self->{_io}->read_bits_int_be(8);
    $self->{le5} = $self->{_io}->read_bits_int_le(5);
    $self->{le6} = $self->{_io}->read_bits_int_le(6);
    $self->{le7} = $self->{_io}->read_bits_int_le(5);
    $self->{be8} = $self->{_io}->read_bits_int_be(1);
}

sub be1 {
    my ($self) = @_;
    return $self->{be1};
}

sub be2 {
    my ($self) = @_;
    return $self->{be2};
}

sub le3 {
    my ($self) = @_;
    return $self->{le3};
}

sub be4 {
    my ($self) = @_;
    return $self->{be4};
}

sub le5 {
    my ($self) = @_;
    return $self->{le5};
}

sub le6 {
    my ($self) = @_;
    return $self->{le6};
}

sub le7 {
    my ($self) = @_;
    return $self->{le7};
}

sub be8 {
    my ($self) = @_;
    return $self->{be8};
}

1;
