# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package IfInstances;

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

}

sub never_happens {
    my ($self) = @_;
    return $self->{never_happens} if ($self->{never_happens});
    if (0) {
        my $_pos = $self->{_io}->pos();
        $self->{_io}->seek(100500);
        $self->{never_happens} = $self->{_io}->read_u1();
        $self->{_io}->seek($_pos);
    }
    return $self->{never_happens};
}

1;
