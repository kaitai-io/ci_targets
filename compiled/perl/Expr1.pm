# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package Expr1;

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

    $self->{len_of_1} = $self->{_io}->read_u2le();
    $self->{str1} = Encode::decode("ASCII", $self->{_io}->read_bytes($self->len_of_1_mod()));
}

sub len_of_1_mod {
    my ($self) = @_;
    return $self->{len_of_1_mod} if ($self->{len_of_1_mod});
    $self->{len_of_1_mod} = ($self->len_of_1() - 2);
    return $self->{len_of_1_mod};
}

sub str1_len {
    my ($self) = @_;
    return $self->{str1_len} if ($self->{str1_len});
    $self->{str1_len} = length($self->str1());
    return $self->{str1_len};
}

sub len_of_1 {
    my ($self) = @_;
    return $self->{len_of_1};
}

sub str1 {
    my ($self) = @_;
    return $self->{str1};
}

1;
