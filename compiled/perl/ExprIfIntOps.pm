# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIfIntOps;

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

    $self->{skip} = $self->{_io}->read_bytes(2);
    if (1) {
        $self->{it} = $self->{_io}->read_s2le();
    }
    if (1) {
        $self->{boxed} = $self->{_io}->read_s2le();
    }
}

sub is_eq_boxed {
    my ($self) = @_;
    return $self->{is_eq_boxed} if ($self->{is_eq_boxed});
    $self->{is_eq_boxed} = $self->it() == $self->boxed();
    return $self->{is_eq_boxed};
}

sub is_eq_prim {
    my ($self) = @_;
    return $self->{is_eq_prim} if ($self->{is_eq_prim});
    $self->{is_eq_prim} = $self->it() == 16705;
    return $self->{is_eq_prim};
}

sub skip {
    my ($self) = @_;
    return $self->{skip};
}

sub it {
    my ($self) = @_;
    return $self->{it};
}

sub boxed {
    my ($self) = @_;
    return $self->{boxed};
}

1;
