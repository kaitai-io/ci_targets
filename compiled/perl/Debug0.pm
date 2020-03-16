# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package Debug0;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{one} = $self->{_io}->read_u1();
    $self->{array_of_ints} = ();
    my $n_array_of_ints = 3;
    for (my $i = 0; $i < $n_array_of_ints; $i++) {
        $self->{array_of_ints}[$i] = $self->{_io}->read_u1();
    }
    $self->{_unnamed2} = $self->{_io}->read_u1();
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub array_of_ints {
    my ($self) = @_;
    return $self->{array_of_ints};
}

sub _unnamed2 {
    my ($self) = @_;
    return $self->{_unnamed2};
}

1;
