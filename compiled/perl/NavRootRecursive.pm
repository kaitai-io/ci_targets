# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NavRootRecursive;

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

    $self->{value} = $self->{_io}->read_u1();
    if ($self->value() == 255) {
        $self->{next} = NavRootRecursive->new($self->{_io}, $self, $self->{_root});
    }
}

sub root_value {
    my ($self) = @_;
    return $self->{root_value} if ($self->{root_value});
    $self->{root_value} = $self->_root()->value();
    return $self->{root_value};
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

sub next {
    my ($self) = @_;
    return $self->{next};
}

1;
