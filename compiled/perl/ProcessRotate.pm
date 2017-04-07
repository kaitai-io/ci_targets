# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package ProcessRotate;

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

    $self->{_raw_buf1} = $self->{_io}->read_bytes(5);
    $self->{buf1} = IO::KaitaiStruct::Stream::process_rotate_left($self->{_raw_buf1}, 3, 1);
    $self->{_raw_buf2} = $self->{_io}->read_bytes(5);
    $self->{buf2} = IO::KaitaiStruct::Stream::process_rotate_left($self->{_raw_buf2}, 8 - (3), 1);
    $self->{key} = $self->{_io}->read_u1();
    $self->{_raw_buf3} = $self->{_io}->read_bytes(5);
    $self->{buf3} = IO::KaitaiStruct::Stream::process_rotate_left($self->{_raw_buf3}, $self->key(), 1);

    return $self;
}

sub buf1 {
    my ($self) = @_;
    return $self->{buf1};
}

sub buf2 {
    my ($self) = @_;
    return $self->{buf2};
}

sub key {
    my ($self) = @_;
    return $self->{key};
}

sub buf3 {
    my ($self) = @_;
    return $self->{buf3};
}

sub _raw_buf1 {
    my ($self) = @_;
    return $self->{_raw_buf1};
}

sub _raw_buf2 {
    my ($self) = @_;
    return $self->{_raw_buf2};
}

sub _raw_buf3 {
    my ($self) = @_;
    return $self->{_raw_buf3};
}

1;
