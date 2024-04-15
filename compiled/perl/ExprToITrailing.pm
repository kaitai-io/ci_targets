# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprToITrailing;

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

}

sub to_i_garbage {
    my ($self) = @_;
    return $self->{to_i_garbage} if ($self->{to_i_garbage});
    $self->{to_i_garbage} = "123_.^" + 0;
    return $self->{to_i_garbage};
}

sub to_i_r10 {
    my ($self) = @_;
    return $self->{to_i_r10} if ($self->{to_i_r10});
    $self->{to_i_r10} = "9173abc" + 0;
    return $self->{to_i_r10};
}

sub to_i_r16 {
    my ($self) = @_;
    return $self->{to_i_r16} if ($self->{to_i_r16});
    $self->{to_i_r16} = hex("9173abc");
    return $self->{to_i_r16};
}

1;
