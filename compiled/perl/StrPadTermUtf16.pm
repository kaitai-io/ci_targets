# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package StrPadTermUtf16;

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

    $self->{str_term} = Encode::decode("UTF-16LE", IO::KaitaiStruct::Stream::bytes_terminate_multi($self->{_io}->read_bytes(10), pack('C*', (0, 0)), 0));
    $self->{str_term_include} = Encode::decode("UTF-16LE", IO::KaitaiStruct::Stream::bytes_terminate_multi($self->{_io}->read_bytes(10), pack('C*', (0, 0)), 1));
    $self->{str_term_and_pad} = Encode::decode("UTF-16LE", IO::KaitaiStruct::Stream::bytes_terminate_multi(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(9), 43), pack('C*', (0, 0)), 0));
}

sub str_term {
    my ($self) = @_;
    return $self->{str_term};
}

sub str_term_include {
    my ($self) = @_;
    return $self->{str_term_include};
}

sub str_term_and_pad {
    my ($self) = @_;
    return $self->{str_term_and_pad};
}

1;
