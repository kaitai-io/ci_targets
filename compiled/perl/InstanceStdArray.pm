# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package InstanceStdArray;

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

    $self->{ofs} = $self->{_io}->read_u4le();
    $self->{entry_size} = $self->{_io}->read_u4le();
    $self->{qty_entries} = $self->{_io}->read_u4le();
}

sub entries {
    my ($self) = @_;
    return $self->{entries} if ($self->{entries});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->ofs());
    $self->{entries} = ();
    my $n_entries = $self->qty_entries();
    for (my $i = 0; $i < $n_entries; $i++) {
        $self->{entries}[$i] = $self->{_io}->read_bytes($self->entry_size());
    }
    $self->{_io}->seek($_pos);
    return $self->{entries};
}

sub ofs {
    my ($self) = @_;
    return $self->{ofs};
}

sub entry_size {
    my ($self) = @_;
    return $self->{entry_size};
}

sub qty_entries {
    my ($self) = @_;
    return $self->{qty_entries};
}

1;
