# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package TermStrzUtf16V1;

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

    $self->{s1} = Encode::decode("UTF-16LE", $self->{_io}->read_bytes_term_multi(pack('C*', (0, 0)), 0, 1, 1));
    $self->{s2} = Encode::decode("UTF-16LE", $self->{_io}->read_bytes_term_multi(pack('C*', (0, 0)), 0, 0, 1));
    $self->{term} = $self->{_io}->read_u2le();
    $self->{s3} = Encode::decode("UTF-16LE", $self->{_io}->read_bytes_term_multi(pack('C*', (0, 0)), 1, 1, 1));
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub s2 {
    my ($self) = @_;
    return $self->{s2};
}

sub term {
    my ($self) = @_;
    return $self->{term};
}

sub s3 {
    my ($self) = @_;
    return $self->{s3};
}

1;
