# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ValidSwitch;

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

    $self->{a} = $self->{_io}->read_u1();
    my $_on = $self->a();
    if ($_on == 80) {
        $self->{b} = $self->{_io}->read_u2le();
    }
    else {
        $self->{b} = $self->{_io}->read_u2be();
    }
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

1;
