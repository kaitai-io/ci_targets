# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package EosExceptionU4;

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

    $self->{_raw_envelope} = $self->{_io}->read_bytes(6);
    my $io__raw_envelope = IO::KaitaiStruct::Stream->new($self->{_raw_envelope});
    $self->{envelope} = EosExceptionU4::Data->new($io__raw_envelope, $self, $self->{_root});
}

sub envelope {
    my ($self) = @_;
    return $self->{envelope};
}

sub _raw_envelope {
    my ($self) = @_;
    return $self->{_raw_envelope};
}

########################################################################
package EosExceptionU4::Data;

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

    $self->{prebuf} = $self->{_io}->read_bytes(3);
    $self->{fail_int} = $self->{_io}->read_u4le();
}

sub prebuf {
    my ($self) = @_;
    return $self->{prebuf};
}

sub fail_int {
    my ($self) = @_;
    return $self->{fail_int};
}

1;
