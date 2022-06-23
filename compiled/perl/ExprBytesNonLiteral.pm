# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ExprBytesNonLiteral;

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

    $self->{one} = $self->{_io}->read_u1();
    $self->{two} = $self->{_io}->read_u1();
}

sub calc_bytes {
    my ($self) = @_;
    return $self->{calc_bytes} if ($self->{calc_bytes});
    $self->{calc_bytes} = pack('C*', ($self->one(), $self->two()));
    return $self->{calc_bytes};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
