# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package Docstrings;

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

    $self->{one} = $self->{_io}->read_u1();
}

sub two {
    my ($self) = @_;
    return $self->{two} if ($self->{two});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{two} = $self->{_io}->read_u1();
    $self->{_io}->seek($_pos);
    return $self->{two};
}

sub three {
    my ($self) = @_;
    return $self->{three} if ($self->{three});
    $self->{three} = 66;
    return $self->{three};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

########################################################################
package Docstrings::ComplexSubtype;

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

1;
