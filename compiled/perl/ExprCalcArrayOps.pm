# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use List::Util;

########################################################################
package ExprCalcArrayOps;

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

sub double_array {
    my ($self) = @_;
    return $self->{double_array} if ($self->{double_array});
    $self->{double_array} = [10.0, 25.0, 50.0, 100.0, 3.14159];
    return $self->{double_array};
}

sub int_array_size {
    my ($self) = @_;
    return $self->{int_array_size} if ($self->{int_array_size});
    $self->{int_array_size} = scalar(@{$self->int_array()});
    return $self->{int_array_size};
}

sub int_array_max {
    my ($self) = @_;
    return $self->{int_array_max} if ($self->{int_array_max});
    $self->{int_array_max} = List::Util::max(@{$self->int_array()});
    return $self->{int_array_max};
}

sub double_array_max {
    my ($self) = @_;
    return $self->{double_array_max} if ($self->{double_array_max});
    $self->{double_array_max} = List::Util::max(@{$self->double_array()});
    return $self->{double_array_max};
}

sub str_array_max {
    my ($self) = @_;
    return $self->{str_array_max} if ($self->{str_array_max});
    $self->{str_array_max} = List::Util::maxstr(@{$self->str_array()});
    return $self->{str_array_max};
}

sub str_array_min {
    my ($self) = @_;
    return $self->{str_array_min} if ($self->{str_array_min});
    $self->{str_array_min} = List::Util::minstr(@{$self->str_array()});
    return $self->{str_array_min};
}

sub double_array_mid {
    my ($self) = @_;
    return $self->{double_array_mid} if ($self->{double_array_mid});
    $self->{double_array_mid} = @{$self->double_array()}[1];
    return $self->{double_array_mid};
}

sub str_array {
    my ($self) = @_;
    return $self->{str_array} if ($self->{str_array});
    $self->{str_array} = ["un", "deux", "trois", "quatre"];
    return $self->{str_array};
}

sub double_array_size {
    my ($self) = @_;
    return $self->{double_array_size} if ($self->{double_array_size});
    $self->{double_array_size} = scalar(@{$self->double_array()});
    return $self->{double_array_size};
}

sub str_array_first {
    my ($self) = @_;
    return $self->{str_array_first} if ($self->{str_array_first});
    $self->{str_array_first} = @{$self->str_array()}[0];
    return $self->{str_array_first};
}

sub str_array_last {
    my ($self) = @_;
    return $self->{str_array_last} if ($self->{str_array_last});
    $self->{str_array_last} = @{$self->str_array()}[-1];
    return $self->{str_array_last};
}

sub str_array_mid {
    my ($self) = @_;
    return $self->{str_array_mid} if ($self->{str_array_mid});
    $self->{str_array_mid} = @{$self->str_array()}[1];
    return $self->{str_array_mid};
}

sub double_array_last {
    my ($self) = @_;
    return $self->{double_array_last} if ($self->{double_array_last});
    $self->{double_array_last} = @{$self->double_array()}[-1];
    return $self->{double_array_last};
}

sub int_array_min {
    my ($self) = @_;
    return $self->{int_array_min} if ($self->{int_array_min});
    $self->{int_array_min} = List::Util::min(@{$self->int_array()});
    return $self->{int_array_min};
}

sub str_array_size {
    my ($self) = @_;
    return $self->{str_array_size} if ($self->{str_array_size});
    $self->{str_array_size} = scalar(@{$self->str_array()});
    return $self->{str_array_size};
}

sub int_array_first {
    my ($self) = @_;
    return $self->{int_array_first} if ($self->{int_array_first});
    $self->{int_array_first} = @{$self->int_array()}[0];
    return $self->{int_array_first};
}

sub double_array_first {
    my ($self) = @_;
    return $self->{double_array_first} if ($self->{double_array_first});
    $self->{double_array_first} = @{$self->double_array()}[0];
    return $self->{double_array_first};
}

sub int_array_mid {
    my ($self) = @_;
    return $self->{int_array_mid} if ($self->{int_array_mid});
    $self->{int_array_mid} = @{$self->int_array()}[1];
    return $self->{int_array_mid};
}

sub double_array_min {
    my ($self) = @_;
    return $self->{double_array_min} if ($self->{double_array_min});
    $self->{double_array_min} = List::Util::min(@{$self->double_array()});
    return $self->{double_array_min};
}

sub int_array {
    my ($self) = @_;
    return $self->{int_array} if ($self->{int_array});
    $self->{int_array} = [10, 25, 50, 100, 200, 500, 1000];
    return $self->{int_array};
}

sub int_array_last {
    my ($self) = @_;
    return $self->{int_array_last} if ($self->{int_array_last});
    $self->{int_array_last} = @{$self->int_array()}[-1];
    return $self->{int_array_last};
}

1;
