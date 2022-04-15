# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package IfValues;

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

    $self->{codes} = ();
    my $n_codes = 3;
    for (my $i = 0; $i < $n_codes; $i++) {
        push @{$self->{codes}}, IfValues::Code->new($self->{_io}, $self, $self->{_root});
    }
}

sub codes {
    my ($self) = @_;
    return $self->{codes};
}

########################################################################
package IfValues::Code;

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

    $self->{opcode} = $self->{_io}->read_u1();
}

sub half_opcode {
    my ($self) = @_;
    return $self->{half_opcode} if ($self->{half_opcode});
    if (($self->opcode() % 2) == 0) {
        $self->{half_opcode} = int($self->opcode() / 2);
    }
    return $self->{half_opcode};
}

sub opcode {
    my ($self) = @_;
    return $self->{opcode};
}

1;
