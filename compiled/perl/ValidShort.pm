# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package ValidShort;

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

    $self->{magic1} = $self->{_io}->read_bytes(6);
    $self->{uint8} = $self->{_io}->read_u1();
    $self->{sint8} = $self->{_io}->read_s1();
    $self->{magic_uint} = Encode::decode("UTF-8", $self->{_io}->read_bytes(10));
    $self->{uint16} = $self->{_io}->read_u2le();
    $self->{uint32} = $self->{_io}->read_u4le();
    $self->{uint64} = $self->{_io}->read_u8le();
    $self->{magic_sint} = Encode::decode("UTF-8", $self->{_io}->read_bytes(10));
    $self->{sint16} = $self->{_io}->read_s2le();
    $self->{sint32} = $self->{_io}->read_s4le();
    $self->{sint64} = $self->{_io}->read_s8le();
}

sub magic1 {
    my ($self) = @_;
    return $self->{magic1};
}

sub uint8 {
    my ($self) = @_;
    return $self->{uint8};
}

sub sint8 {
    my ($self) = @_;
    return $self->{sint8};
}

sub magic_uint {
    my ($self) = @_;
    return $self->{magic_uint};
}

sub uint16 {
    my ($self) = @_;
    return $self->{uint16};
}

sub uint32 {
    my ($self) = @_;
    return $self->{uint32};
}

sub uint64 {
    my ($self) = @_;
    return $self->{uint64};
}

sub magic_sint {
    my ($self) = @_;
    return $self->{magic_sint};
}

sub sint16 {
    my ($self) = @_;
    return $self->{sint16};
}

sub sint32 {
    my ($self) = @_;
    return $self->{sint32};
}

sub sint64 {
    my ($self) = @_;
    return $self->{sint64};
}

1;
