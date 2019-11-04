# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ValidFailInst;

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

    if ($self->inst() >= 0) {
        $self->{a} = $self->{_io}->read_u1();
    }
}

sub inst {
    my ($self) = @_;
    return $self->{inst} if ($self->{inst});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(5);
    $self->{inst} = $self->{_io}->read_u1();
    $self->{_io}->seek($_pos);
    return $self->{inst};
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

1;
