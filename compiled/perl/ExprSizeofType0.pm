# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprSizeofType0;

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

}

sub sizeof_block {
    my ($self) = @_;
    return $self->{sizeof_block} if ($self->{sizeof_block});
    $self->{sizeof_block} = 7;
    return $self->{sizeof_block};
}

########################################################################
package ExprSizeofType0::Block;

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

    $self->{a} = $self->{_io}->read_u1();
    $self->{b} = $self->{_io}->read_u4le();
    $self->{c} = $self->{_io}->read_bytes(2);
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

sub c {
    my ($self) = @_;
    return $self->{c};
}

1;
