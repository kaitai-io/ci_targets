# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ParamsPassArrayIo;

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

    $self->{_raw_first} = $self->{_io}->read_bytes(1);
    my $io__raw_first = IO::KaitaiStruct::Stream->new($self->{_raw_first});
    $self->{first} = ParamsPassArrayIo::Block->new($io__raw_first, $self, $self->{_root});
    $self->{one} = ParamsPassArrayIo::ParamType->new($self->{_io}, $self, $self->{_root});
}

sub first {
    my ($self) = @_;
    return $self->{first};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub _raw_first {
    my ($self) = @_;
    return $self->{_raw_first};
}

########################################################################
package ParamsPassArrayIo::Block;

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
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{foo} = $self->{_io}->read_u1();
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

########################################################################
package ParamsPassArrayIo::ParamType;

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
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{buf} = $self->{_io}->read_bytes(@{$self->arg_streams()}[0]->size());
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub arg_streams {
    my ($self) = @_;
    return $self->{arg_streams};
}

1;
