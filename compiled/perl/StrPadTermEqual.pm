# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package StrPadTermEqual;

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

    $self->{s1} = Encode::decode("UTF-8", IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 64), 64, 0));
    $self->{s2} = Encode::decode("UTF-8", IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 64, 1));
    $self->{s3} = Encode::decode("UTF-8", IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 43, 0));
    $self->{s4} = Encode::decode("UTF-8", IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 46), 46, 1));
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub s2 {
    my ($self) = @_;
    return $self->{s2};
}

sub s3 {
    my ($self) = @_;
    return $self->{s3};
}

sub s4 {
    my ($self) = @_;
    return $self->{s4};
}

1;
