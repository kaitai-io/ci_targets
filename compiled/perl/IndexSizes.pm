# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package IndexSizes;

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

    $self->{qty} = $self->{_io}->read_u4le();
    $self->{sizes} = ();
    my $n_sizes = $self->qty();
    for (my $i = 0; $i < $n_sizes; $i++) {
        $self->{sizes}[$i] = $self->{_io}->read_u4le();
    }
    $self->{bufs} = ();
    my $n_bufs = $self->qty();
    for (my $i = 0; $i < $n_bufs; $i++) {
        $self->{bufs}[$i] = Encode::decode("ASCII", $self->{_io}->read_bytes(@{$self->sizes()}[$i]));
    }
}

sub qty {
    my ($self) = @_;
    return $self->{qty};
}

sub sizes {
    my ($self) = @_;
    return $self->{sizes};
}

sub bufs {
    my ($self) = @_;
    return $self->{bufs};
}

1;
