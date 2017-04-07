# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package Expr3;

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

    $self->{one} = $self->{_io}->read_u1();
    $self->{two} = Encode::decode("ASCII", $self->{_io}->read_bytes(3));

    return $self;
}

sub three {
    my ($self) = @_;
    return $self->{three} if ($self->{three});
    $self->{three} = "\@" . $self->two();
    return $self->{three};
}

sub is_str_ge {
    my ($self) = @_;
    return $self->{is_str_ge} if ($self->{is_str_ge});
    $self->{is_str_ge} = $self->two() ge "ACK2";
    return $self->{is_str_ge};
}

sub is_str_ne {
    my ($self) = @_;
    return $self->{is_str_ne} if ($self->{is_str_ne});
    $self->{is_str_ne} = $self->two() ne "ACK";
    return $self->{is_str_ne};
}

sub is_str_gt {
    my ($self) = @_;
    return $self->{is_str_gt} if ($self->{is_str_gt});
    $self->{is_str_gt} = $self->two() gt "ACK2";
    return $self->{is_str_gt};
}

sub is_str_le {
    my ($self) = @_;
    return $self->{is_str_le} if ($self->{is_str_le});
    $self->{is_str_le} = $self->two() le "ACK2";
    return $self->{is_str_le};
}

sub is_str_lt2 {
    my ($self) = @_;
    return $self->{is_str_lt2} if ($self->{is_str_lt2});
    $self->{is_str_lt2} = $self->three() lt $self->two();
    return $self->{is_str_lt2};
}

sub test_not {
    my ($self) = @_;
    return $self->{test_not} if ($self->{test_not});
    $self->{test_not} = !0;
    return $self->{test_not};
}

sub is_str_lt {
    my ($self) = @_;
    return $self->{is_str_lt} if ($self->{is_str_lt});
    $self->{is_str_lt} = $self->two() lt "ACK2";
    return $self->{is_str_lt};
}

sub four {
    my ($self) = @_;
    return $self->{four} if ($self->{four});
    $self->{four} = "_" . $self->two() . "_";
    return $self->{four};
}

sub is_str_eq {
    my ($self) = @_;
    return $self->{is_str_eq} if ($self->{is_str_eq});
    $self->{is_str_eq} = $self->two() eq "ACK";
    return $self->{is_str_eq};
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
