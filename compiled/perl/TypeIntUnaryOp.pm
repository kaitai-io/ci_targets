# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package TypeIntUnaryOp;

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

    $self->{value_s2} = $self->{_io}->read_s2le();
    $self->{value_s8} = $self->{_io}->read_s8le();
}

sub unary_s2 {
    my ($self) = @_;
    return $self->{unary_s2} if ($self->{unary_s2});
    $self->{unary_s2} = -($self->value_s2());
    return $self->{unary_s2};
}

sub unary_s8 {
    my ($self) = @_;
    return $self->{unary_s8} if ($self->{unary_s8});
    $self->{unary_s8} = -($self->value_s8());
    return $self->{unary_s8};
}

sub value_s2 {
    my ($self) = @_;
    return $self->{value_s2};
}

sub value_s8 {
    my ($self) = @_;
    return $self->{value_s8};
}

1;
