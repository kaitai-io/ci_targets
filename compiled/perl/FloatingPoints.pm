# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package FloatingPoints;

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

    $self->{single_value} = $self->{_io}->read_f4le();
    $self->{double_value} = $self->{_io}->read_f8le();
    $self->{single_value_be} = $self->{_io}->read_f4be();
    $self->{double_value_be} = $self->{_io}->read_f8be();
    $self->{approximate_value} = $self->{_io}->read_f4le();
}

sub single_value_plus_int {
    my ($self) = @_;
    return $self->{single_value_plus_int} if ($self->{single_value_plus_int});
    $self->{single_value_plus_int} = ($self->single_value() + 1);
    return $self->{single_value_plus_int};
}

sub single_value_plus_float {
    my ($self) = @_;
    return $self->{single_value_plus_float} if ($self->{single_value_plus_float});
    $self->{single_value_plus_float} = ($self->single_value() + 0.5);
    return $self->{single_value_plus_float};
}

sub double_value_plus_float {
    my ($self) = @_;
    return $self->{double_value_plus_float} if ($self->{double_value_plus_float});
    $self->{double_value_plus_float} = ($self->double_value() + 0.05);
    return $self->{double_value_plus_float};
}

sub single_value {
    my ($self) = @_;
    return $self->{single_value};
}

sub double_value {
    my ($self) = @_;
    return $self->{double_value};
}

sub single_value_be {
    my ($self) = @_;
    return $self->{single_value_be};
}

sub double_value_be {
    my ($self) = @_;
    return $self->{double_value_be};
}

sub approximate_value {
    my ($self) = @_;
    return $self->{approximate_value};
}

1;
