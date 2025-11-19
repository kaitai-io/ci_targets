# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package TsPacketHeader;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ADAPTATION_FIELD_CONTROL_ENUM_RESERVED = 0;
our $ADAPTATION_FIELD_CONTROL_ENUM_PAYLOAD_ONLY = 1;
our $ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_ONLY = 2;
our $ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_AND_PAYLOAD = 3;

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

    $self->{sync_byte} = $self->{_io}->read_u1();
    $self->{transport_error_indicator} = $self->{_io}->read_bits_int_be(1);
    $self->{payload_unit_start_indicator} = $self->{_io}->read_bits_int_be(1);
    $self->{transport_priority} = $self->{_io}->read_bits_int_be(1);
    $self->{pid} = $self->{_io}->read_bits_int_be(13);
    $self->{transport_scrambling_control} = $self->{_io}->read_bits_int_be(2);
    $self->{adaptation_field_control} = $self->{_io}->read_bits_int_be(2);
    $self->{continuity_counter} = $self->{_io}->read_bits_int_be(4);
    $self->{ts_packet_remain} = $self->{_io}->read_bytes(184);
}

sub sync_byte {
    my ($self) = @_;
    return $self->{sync_byte};
}

sub transport_error_indicator {
    my ($self) = @_;
    return $self->{transport_error_indicator};
}

sub payload_unit_start_indicator {
    my ($self) = @_;
    return $self->{payload_unit_start_indicator};
}

sub transport_priority {
    my ($self) = @_;
    return $self->{transport_priority};
}

sub pid {
    my ($self) = @_;
    return $self->{pid};
}

sub transport_scrambling_control {
    my ($self) = @_;
    return $self->{transport_scrambling_control};
}

sub adaptation_field_control {
    my ($self) = @_;
    return $self->{adaptation_field_control};
}

sub continuity_counter {
    my ($self) = @_;
    return $self->{continuity_counter};
}

sub ts_packet_remain {
    my ($self) = @_;
    return $self->{ts_packet_remain};
}

1;
