# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ExprEnum;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ANIMAL_DOG = 4;
our $ANIMAL_CAT = 7;
our $ANIMAL_CHICKEN = 12;
our $ANIMAL_BOOM = 102;

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

    $self->{one} = $self->{_io}->read_u1();
}

sub const_dog {
    my ($self) = @_;
    return $self->{const_dog} if ($self->{const_dog});
    $self->{const_dog} = 4;
    return $self->{const_dog};
}

sub derived_boom {
    my ($self) = @_;
    return $self->{derived_boom} if ($self->{derived_boom});
    $self->{derived_boom} = $self->one();
    return $self->{derived_boom};
}

sub derived_dog {
    my ($self) = @_;
    return $self->{derived_dog} if ($self->{derived_dog});
    $self->{derived_dog} = ($self->one() - 98);
    return $self->{derived_dog};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

1;
