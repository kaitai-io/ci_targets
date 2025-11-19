# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package BitsSimpleLe;

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

    $self->{byte_1} = $self->{_io}->read_bits_int_le(8);
    $self->{byte_2} = $self->{_io}->read_bits_int_le(8);
    $self->{bits_a} = $self->{_io}->read_bits_int_le(1);
    $self->{bits_b} = $self->{_io}->read_bits_int_le(3);
    $self->{bits_c} = $self->{_io}->read_bits_int_le(4);
    $self->{large_bits_1} = $self->{_io}->read_bits_int_le(10);
    $self->{spacer} = $self->{_io}->read_bits_int_le(3);
    $self->{large_bits_2} = $self->{_io}->read_bits_int_le(11);
    $self->{normal_s2} = $self->{_io}->read_s2be();
    $self->{byte_8_9_10} = $self->{_io}->read_bits_int_le(24);
    $self->{byte_11_to_14} = $self->{_io}->read_bits_int_le(32);
    $self->{byte_15_to_19} = $self->{_io}->read_bits_int_le(40);
    $self->{byte_20_to_27} = $self->{_io}->read_bits_int_le(64);
}

sub test_if_b1 {
    my ($self) = @_;
    return $self->{test_if_b1} if ($self->{test_if_b1});
    if ($self->bits_a() == 1) {
        $self->{test_if_b1} = 123;
    }
    return $self->{test_if_b1};
}

sub byte_1 {
    my ($self) = @_;
    return $self->{byte_1};
}

sub byte_2 {
    my ($self) = @_;
    return $self->{byte_2};
}

sub bits_a {
    my ($self) = @_;
    return $self->{bits_a};
}

sub bits_b {
    my ($self) = @_;
    return $self->{bits_b};
}

sub bits_c {
    my ($self) = @_;
    return $self->{bits_c};
}

sub large_bits_1 {
    my ($self) = @_;
    return $self->{large_bits_1};
}

sub spacer {
    my ($self) = @_;
    return $self->{spacer};
}

sub large_bits_2 {
    my ($self) = @_;
    return $self->{large_bits_2};
}

sub normal_s2 {
    my ($self) = @_;
    return $self->{normal_s2};
}

sub byte_8_9_10 {
    my ($self) = @_;
    return $self->{byte_8_9_10};
}

sub byte_11_to_14 {
    my ($self) = @_;
    return $self->{byte_11_to_14};
}

sub byte_15_to_19 {
    my ($self) = @_;
    return $self->{byte_15_to_19};
}

sub byte_20_to_27 {
    my ($self) = @_;
    return $self->{byte_20_to_27};
}

1;
