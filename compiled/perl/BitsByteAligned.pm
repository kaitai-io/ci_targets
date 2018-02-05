# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package BitsByteAligned;

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

    $self->{one} = $self->{_io}->read_bits_int(6);
    $self->{_io}->align_to_byte();
    $self->{byte_1} = $self->{_io}->read_u1();
    $self->{two} = $self->{_io}->read_bits_int(3);
    $self->{three} = $self->{_io}->read_bits_int(1);
    $self->{_io}->align_to_byte();
    $self->{byte_2} = $self->{_io}->read_u1();
    $self->{four} = $self->{_io}->read_bits_int(14);
    $self->{_io}->align_to_byte();
    $self->{byte_3} = $self->{_io}->read_bytes(1);
    $self->{full_byte} = $self->{_io}->read_bits_int(8);
    $self->{_io}->align_to_byte();
    $self->{byte_4} = $self->{_io}->read_u1();
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub byte_1 {
    my ($self) = @_;
    return $self->{byte_1};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

sub three {
    my ($self) = @_;
    return $self->{three};
}

sub byte_2 {
    my ($self) = @_;
    return $self->{byte_2};
}

sub four {
    my ($self) = @_;
    return $self->{four};
}

sub byte_3 {
    my ($self) = @_;
    return $self->{byte_3};
}

sub full_byte {
    my ($self) = @_;
    return $self->{full_byte};
}

sub byte_4 {
    my ($self) = @_;
    return $self->{byte_4};
}

1;
