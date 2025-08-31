# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package RepeatUntilTermBytes;

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

    $self->{records1} = [];
    {
        my $_it;
        do {
            $_it = $self->{_io}->read_bytes_term(170, 0, 1, 1);
            push @{$self->{records1}}, $_it;
        } until (length($_it) == 0);
    }
    $self->{records2} = [];
    {
        my $_it;
        do {
            $_it = $self->{_io}->read_bytes_term(170, 1, 1, 1);
            push @{$self->{records2}}, $_it;
        } until ($_it ne pack('C*', (170)));
    }
    $self->{records3} = [];
    {
        my $_it;
        do {
            $_it = $self->{_io}->read_bytes_term(85, 0, 0, 1);
            push @{$self->{records3}}, $_it;
        } until ($_it eq @{$self->records1()}[-1]);
    }
}

sub records1 {
    my ($self) = @_;
    return $self->{records1};
}

sub records2 {
    my ($self) = @_;
    return $self->{records2};
}

sub records3 {
    my ($self) = @_;
    return $self->{records3};
}

1;
