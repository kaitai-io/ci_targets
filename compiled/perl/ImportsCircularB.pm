# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use ImportsCircularA;

########################################################################
package ImportsCircularB;

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

    $self->{initial} = $self->{_io}->read_u1();
    if ($self->initial() == 65) {
        $self->{back_ref} = ImportsCircularA->new($self->{_io});
    }
}

sub initial {
    my ($self) = @_;
    return $self->{initial};
}

sub back_ref {
    my ($self) = @_;
    return $self->{back_ref};
}

1;
