# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package EnumNegative;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $CONSTANTS_NEGATIVE_ONE = -1;
our $CONSTANTS_POSITIVE_ONE = 1;

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

    $self->{f1} = $self->{_io}->read_s1();
    $self->{f2} = $self->{_io}->read_s1();
}

sub f1 {
    my ($self) = @_;
    return $self->{f1};
}

sub f2 {
    my ($self) = @_;
    return $self->{f2};
}

1;
