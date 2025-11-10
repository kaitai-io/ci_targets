# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Integers;

########################################################################
package NameClashImportVsInst;

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

sub integers {
    my ($self) = @_;
    return $self->{integers} if ($self->{integers});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{integers} = Integers->new($self->{_io});
    $self->{_io}->seek($_pos);
    return $self->{integers};
}

sub std {
    my ($self) = @_;
    return $self->{std} if ($self->{std});
    $self->{std} = 1 + 2;
    return $self->{std};
}

1;
