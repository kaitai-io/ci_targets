# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use HelloWorld;

########################################################################
package Imports0;

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

    $self->{two} = $self->{_io}->read_u1();
    $self->{hw} = HelloWorld->new($self->{_io});
}

sub hw_one {
    my ($self) = @_;
    return $self->{hw_one} if ($self->{hw_one});
    $self->{hw_one} = $self->hw()->one();
    return $self->{hw_one};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

sub hw {
    my ($self) = @_;
    return $self->{hw};
}

1;
