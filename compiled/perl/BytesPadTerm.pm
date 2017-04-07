# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package BytesPadTerm;

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

    $self->{str_pad} = IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 64);
    $self->{str_term} = IO::KaitaiStruct::Stream::bytes_terminate($self->{_io}->read_bytes(20), 64, 0);
    $self->{str_term_and_pad} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 64, 0);
    $self->{str_term_include} = IO::KaitaiStruct::Stream::bytes_terminate($self->{_io}->read_bytes(20), 64, 1);

    return $self;
}

sub str_pad {
    my ($self) = @_;
    return $self->{str_pad};
}

sub str_term {
    my ($self) = @_;
    return $self->{str_term};
}

sub str_term_and_pad {
    my ($self) = @_;
    return $self->{str_term_and_pad};
}

sub str_term_include {
    my ($self) = @_;
    return $self->{str_term_include};
}

1;
