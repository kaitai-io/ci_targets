# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package InstanceInRepeatUntil;

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

    $self->{entries} = [];
    {
        my $_it;
        do {
            $_it = $self->{_io}->read_s2le();
            push @{$self->{entries}}, $_it;
        } until ($_it == $self->until_val());
    }
}

sub until_val {
    my ($self) = @_;
    return $self->{until_val} if ($self->{until_val});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 12);
    $self->{until_val} = $self->{_io}->read_s2le();
    $self->{_io}->seek($_pos);
    return $self->{until_val};
}

sub entries {
    my ($self) = @_;
    return $self->{entries};
}

1;
