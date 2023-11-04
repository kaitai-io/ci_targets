# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package JsSignedRightShift;

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

}

sub should_be_40000000 {
    my ($self) = @_;
    return $self->{should_be_40000000} if ($self->{should_be_40000000});
    $self->{should_be_40000000} = (2147483648 >> 1);
    return $self->{should_be_40000000};
}

sub should_be_a00000 {
    my ($self) = @_;
    return $self->{should_be_a00000} if ($self->{should_be_a00000});
    $self->{should_be_a00000} = (2684354560 >> 8);
    return $self->{should_be_a00000};
}

1;
