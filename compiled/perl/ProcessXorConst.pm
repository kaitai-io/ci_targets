# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ProcessXorConst;

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

    $self->{key} = $self->{_io}->read_u1();
    $self->{_raw_buf} = $self->{_io}->read_bytes_full();
    $self->{buf} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw_buf}, 255);
}

sub key {
    my ($self) = @_;
    return $self->{key};
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub _raw_buf {
    my ($self) = @_;
    return $self->{_raw_buf};
}

1;
