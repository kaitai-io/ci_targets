# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package PositionInSeq;

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

    $self->{numbers} = ();
    my $n_numbers = $self->header()->qty_numbers();
    for (my $i = 0; $i < $n_numbers; $i++) {
        $self->{numbers}[$i] = $self->{_io}->read_u1();
    }
}

sub header {
    my ($self) = @_;
    return $self->{header} if ($self->{header});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(16);
    $self->{header} = PositionInSeq::HeaderObj->new($self->{_io}, $self, $self->{_root});
    $self->{_io}->seek($_pos);
    return $self->{header};
}

sub numbers {
    my ($self) = @_;
    return $self->{numbers};
}

########################################################################
package PositionInSeq::HeaderObj;

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

    $self->{qty_numbers} = $self->{_io}->read_u4le();
}

sub qty_numbers {
    my ($self) = @_;
    return $self->{qty_numbers};
}

1;
