# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package CombineEnum;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ANIMAL_PIG = 7;
our $ANIMAL_HORSE = 12;

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

    $self->{enum_u4} = $self->{_io}->read_u4le();
    $self->{enum_u2} = $self->{_io}->read_u2le();
}

sub enum_u4_u2 {
    my ($self) = @_;
    return $self->{enum_u4_u2} if ($self->{enum_u4_u2});
    $self->{enum_u4_u2} = (0 ? $self->enum_u4() : $self->enum_u2());
    return $self->{enum_u4_u2};
}

sub enum_u4 {
    my ($self) = @_;
    return $self->{enum_u4};
}

sub enum_u2 {
    my ($self) = @_;
    return $self->{enum_u2};
}

1;
