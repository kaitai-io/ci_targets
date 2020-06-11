# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package SwitchElseOnly;

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

    $self->{opcode} = $self->{_io}->read_s1();
    $self->{prim_byte} = $self->{_io}->read_s1();
    $self->{indicator} = $self->{_io}->read_bytes(4);
    $self->{ut} = SwitchElseOnly::Data->new($self->{_io}, $self, $self->{_root});
}

sub opcode {
    my ($self) = @_;
    return $self->{opcode};
}

sub prim_byte {
    my ($self) = @_;
    return $self->{prim_byte};
}

sub indicator {
    my ($self) = @_;
    return $self->{indicator};
}

sub ut {
    my ($self) = @_;
    return $self->{ut};
}

########################################################################
package SwitchElseOnly::Data;

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

    $self->{value} = $self->{_io}->read_bytes(4);
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
