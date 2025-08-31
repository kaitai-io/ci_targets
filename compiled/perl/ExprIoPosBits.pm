# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIoPosBits;

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

    $self->{foo} = $self->{_io}->read_bits_int_be(3);
    if ($self->_io()->pos() == 1) {
        $self->{bar} = $self->{_io}->read_bits_int_be(5);
    }
    if ($self->_io()->pos() == 1) {
        $self->{baz} = $self->{_io}->read_bits_int_be(1);
    }
    if ($self->_io()->pos() == 2) {
        $self->{qux} = $self->{_io}->read_bits_int_be(7);
    }
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

sub bar {
    my ($self) = @_;
    return $self->{bar};
}

sub baz {
    my ($self) = @_;
    return $self->{baz};
}

sub qux {
    my ($self) = @_;
    return $self->{qux};
}

1;
