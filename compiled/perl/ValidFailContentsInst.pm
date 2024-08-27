# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ValidFailContentsInst;

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

    if (length($self->foo()) == 0) {
        $self->{a} = $self->{_io}->read_bytes(0);
    }
}

sub foo {
    my ($self) = @_;
    return $self->{foo} if ($self->{foo});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{foo} = $self->{_io}->read_bytes(2);
    $self->{_io}->seek($_pos);
    return $self->{foo};
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

1;
