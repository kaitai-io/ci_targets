# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use HelloWorld;
use CastToImported2;

########################################################################
package ImportsCastToImported2;

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

    $self->{hw} = HelloWorld->new($self->{_io});
    $self->{two} = CastToImported2->new($self->{_io});
}

sub hw {
    my ($self) = @_;
    return $self->{hw};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
