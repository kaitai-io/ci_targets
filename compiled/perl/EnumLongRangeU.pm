# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package EnumLongRangeU;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $CONSTANTS_ZERO = 0;
our $CONSTANTS_INT_MAX = 4294967295;
our $CONSTANTS_INT_OVER_MAX = 4294967296;
our $CONSTANTS_LONG_MAX = 9223372036854775807;

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

    $self->{f1} = $self->{_io}->read_u8be();
    $self->{f2} = $self->{_io}->read_u8be();
    $self->{f3} = $self->{_io}->read_u8be();
    $self->{f4} = $self->{_io}->read_u8be();
}

sub f1 {
    my ($self) = @_;
    return $self->{f1};
}

sub f2 {
    my ($self) = @_;
    return $self->{f2};
}

sub f3 {
    my ($self) = @_;
    return $self->{f3};
}

sub f4 {
    my ($self) = @_;
    return $self->{f4};
}

1;
