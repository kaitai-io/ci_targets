# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package StrCombine;

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

    $self->{str_term} = Encode::decode("ASCII", $self->{_io}->read_bytes_term(124, 0, 1, 1));
    $self->{str_limit} = Encode::decode("ASCII", $self->{_io}->read_bytes(4));
    $self->{str_eos} = Encode::decode("ASCII", $self->{_io}->read_bytes_full());
}

sub limit_or_calc_bytes {
    my ($self) = @_;
    return $self->{limit_or_calc_bytes} if ($self->{limit_or_calc_bytes});
    $self->{limit_or_calc_bytes} = (1 ? $self->str_limit() : $self->str_calc_bytes());
    return $self->{limit_or_calc_bytes};
}

sub limit_or_calc {
    my ($self) = @_;
    return $self->{limit_or_calc} if ($self->{limit_or_calc});
    $self->{limit_or_calc} = (0 ? $self->str_limit() : $self->str_calc());
    return $self->{limit_or_calc};
}

sub term_or_limit {
    my ($self) = @_;
    return $self->{term_or_limit} if ($self->{term_or_limit});
    $self->{term_or_limit} = (1 ? $self->str_term() : $self->str_limit());
    return $self->{term_or_limit};
}

sub limit_or_eos {
    my ($self) = @_;
    return $self->{limit_or_eos} if ($self->{limit_or_eos});
    $self->{limit_or_eos} = (1 ? $self->str_limit() : $self->str_eos());
    return $self->{limit_or_eos};
}

sub calc_or_calc_bytes {
    my ($self) = @_;
    return $self->{calc_or_calc_bytes} if ($self->{calc_or_calc_bytes});
    $self->{calc_or_calc_bytes} = (0 ? $self->str_calc() : $self->str_calc_bytes());
    return $self->{calc_or_calc_bytes};
}

sub str_calc_bytes {
    my ($self) = @_;
    return $self->{str_calc_bytes} if ($self->{str_calc_bytes});
    $self->{str_calc_bytes} = Encode::decode("ASCII", $self->calc_bytes());
    return $self->{str_calc_bytes};
}

sub eos_or_calc {
    my ($self) = @_;
    return $self->{eos_or_calc} if ($self->{eos_or_calc});
    $self->{eos_or_calc} = (0 ? $self->str_eos() : $self->str_calc());
    return $self->{eos_or_calc};
}

sub term_or_calc {
    my ($self) = @_;
    return $self->{term_or_calc} if ($self->{term_or_calc});
    $self->{term_or_calc} = (1 ? $self->str_term() : $self->str_calc());
    return $self->{term_or_calc};
}

sub term_or_calc_bytes {
    my ($self) = @_;
    return $self->{term_or_calc_bytes} if ($self->{term_or_calc_bytes});
    $self->{term_or_calc_bytes} = (0 ? $self->str_term() : $self->str_calc_bytes());
    return $self->{term_or_calc_bytes};
}

sub term_or_eos {
    my ($self) = @_;
    return $self->{term_or_eos} if ($self->{term_or_eos});
    $self->{term_or_eos} = (0 ? $self->str_term() : $self->str_eos());
    return $self->{term_or_eos};
}

sub str_calc {
    my ($self) = @_;
    return $self->{str_calc} if ($self->{str_calc});
    $self->{str_calc} = "bar";
    return $self->{str_calc};
}

sub eos_or_calc_bytes {
    my ($self) = @_;
    return $self->{eos_or_calc_bytes} if ($self->{eos_or_calc_bytes});
    $self->{eos_or_calc_bytes} = (1 ? $self->str_eos() : $self->str_calc_bytes());
    return $self->{eos_or_calc_bytes};
}

sub calc_bytes {
    my ($self) = @_;
    return $self->{calc_bytes} if ($self->{calc_bytes});
    $self->{calc_bytes} = pack('C*', (98, 97, 122));
    return $self->{calc_bytes};
}

sub str_term {
    my ($self) = @_;
    return $self->{str_term};
}

sub str_limit {
    my ($self) = @_;
    return $self->{str_limit};
}

sub str_eos {
    my ($self) = @_;
    return $self->{str_eos};
}

1;
