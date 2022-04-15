# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ProcessRepeatBytes;

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

    $self->{_raw_bufs} = ();
    $self->{bufs} = ();
    my $n_bufs = 2;
    for (my $i = 0; $i < $n_bufs; $i++) {
        push @{$self->{_raw_bufs}}, $self->{_io}->read_bytes(5);
        push @{$self->{bufs}}, IO::KaitaiStruct::Stream::process_xor_one($self->{_raw_bufs}[$i], 158);
    }
}

sub bufs {
    my ($self) = @_;
    return $self->{bufs};
}

sub _raw_bufs {
    my ($self) = @_;
    return $self->{_raw_bufs};
}

1;
