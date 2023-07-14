# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package ToStringCustom;

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

    $self->{s1} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 1, 1));
    $self->{s2} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 1, 1));
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub s2 {
    my ($self) = @_;
    return $self->{s2};
}

use overload '""' => \&_to_string;

sub _to_string {
    my ($self) = @_;
    return "s1 = " . $self->s1() . ", s2 = " . $self->s2()
}

1;
