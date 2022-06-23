# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use List::Util;

########################################################################
package ExprBytesOps;

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

    $self->{one} = $self->{_io}->read_bytes(3);
}

sub two_last {
    my ($self) = @_;
    return $self->{two_last} if ($self->{two_last});
    $self->{two_last} = unpack('C', substr($self->two(), -1, 1));
    return $self->{two_last};
}

sub two_max {
    my ($self) = @_;
    return $self->{two_max} if ($self->{two_max});
    $self->{two_max} = List::Util::max(unpack('C*', $self->two()));
    return $self->{two_max};
}

sub one_min {
    my ($self) = @_;
    return $self->{one_min} if ($self->{one_min});
    $self->{one_min} = List::Util::min(unpack('C*', $self->one()));
    return $self->{one_min};
}

sub one_first {
    my ($self) = @_;
    return $self->{one_first} if ($self->{one_first});
    $self->{one_first} = unpack('C', substr($self->one(), 0, 1));
    return $self->{one_first};
}

sub one_mid {
    my ($self) = @_;
    return $self->{one_mid} if ($self->{one_mid});
    $self->{one_mid} = unpack('C', substr($self->one(), 1, 1));
    return $self->{one_mid};
}

sub two {
    my ($self) = @_;
    return $self->{two} if ($self->{two});
    $self->{two} = pack('C*', (65, 255, 75));
    return $self->{two};
}

sub two_min {
    my ($self) = @_;
    return $self->{two_min} if ($self->{two_min});
    $self->{two_min} = List::Util::min(unpack('C*', $self->two()));
    return $self->{two_min};
}

sub two_mid {
    my ($self) = @_;
    return $self->{two_mid} if ($self->{two_mid});
    $self->{two_mid} = unpack('C', substr($self->two(), 1, 1));
    return $self->{two_mid};
}

sub one_size {
    my ($self) = @_;
    return $self->{one_size} if ($self->{one_size});
    $self->{one_size} = length($self->one());
    return $self->{one_size};
}

sub one_last {
    my ($self) = @_;
    return $self->{one_last} if ($self->{one_last});
    $self->{one_last} = unpack('C', substr($self->one(), -1, 1));
    return $self->{one_last};
}

sub two_size {
    my ($self) = @_;
    return $self->{two_size} if ($self->{two_size});
    $self->{two_size} = length($self->two());
    return $self->{two_size};
}

sub one_max {
    my ($self) = @_;
    return $self->{one_max} if ($self->{one_max});
    $self->{one_max} = List::Util::max(unpack('C*', $self->one()));
    return $self->{one_max};
}

sub two_first {
    my ($self) = @_;
    return $self->{two_first} if ($self->{two_first});
    $self->{two_first} = unpack('C', substr($self->two(), 0, 1));
    return $self->{two_first};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

1;
