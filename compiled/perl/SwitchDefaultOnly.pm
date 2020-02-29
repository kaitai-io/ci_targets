# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package SwitchDefaultOnly;

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
    my $_on = $self->opcode();
    else {
        $self->{byte} = $self->{_io}->read_s1();
    }
    my $_on = $self->opcode();
    else {
        $self->{struct} = SwitchDefaultOnly::Data->new($self->{_io}, $self, $self->{_root});
    }
    my $_on = $self->opcode();
    else {
        $self->{_raw_struct_sized} = $self->{_io}->read_bytes(4);
        my $io__raw_struct_sized = IO::KaitaiStruct::Stream->new($self->{_raw_struct_sized});
        $self->{struct_sized} = SwitchDefaultOnly::Data->new($io__raw_struct_sized, $self, $self->{_root});
    }
}

sub opcode {
    my ($self) = @_;
    return $self->{opcode};
}

sub byte {
    my ($self) = @_;
    return $self->{byte};
}

sub struct {
    my ($self) = @_;
    return $self->{struct};
}

sub struct_sized {
    my ($self) = @_;
    return $self->{struct_sized};
}

sub _raw_struct_sized {
    my ($self) = @_;
    return $self->{_raw_struct_sized};
}

########################################################################
package SwitchDefaultOnly::Data;

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
