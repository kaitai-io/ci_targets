# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package ParamsDef;

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

    $self->{buf} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len()));
    if ($self->has_trailer()) {
        $self->{trailer} = $self->{_io}->read_u1();
    }
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub trailer {
    my ($self) = @_;
    return $self->{trailer};
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

sub has_trailer {
    my ($self) = @_;
    return $self->{has_trailer};
}

1;
