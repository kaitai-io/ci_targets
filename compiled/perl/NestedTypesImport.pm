# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NestedTypesImport;

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

    $self->{a_cc} = NestedTypes3::SubtypeA::SubtypeCc->new($self->{_io}, $self, $self->{_root});
    $self->{a_c_d} = NestedTypes3::SubtypeA::SubtypeC::SubtypeD->new($self->{_io}, $self, $self->{_root});
    $self->{b} = NestedTypes3::SubtypeB->new($self->{_io}, $self, $self->{_root});
}

sub a_cc {
    my ($self) = @_;
    return $self->{a_cc};
}

sub a_c_d {
    my ($self) = @_;
    return $self->{a_c_d};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

1;
