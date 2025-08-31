# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIfIntEq;

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

    $self->{skip} = $self->{_io}->read_bytes(2);
    $self->{seq} = $self->{_io}->read_s2le();
    if (1) {
        $self->{seq_if} = $self->{_io}->read_s2le();
    }
}

sub calc {
    my ($self) = @_;
    return $self->{calc} if ($self->{calc});
    $self->{calc} = 16705;
    return $self->{calc};
}

sub calc_eq_calc_if {
    my ($self) = @_;
    return $self->{calc_eq_calc_if} if ($self->{calc_eq_calc_if});
    $self->{calc_eq_calc_if} = $self->calc() == $self->calc_if();
    return $self->{calc_eq_calc_if};
}

sub calc_eq_lit {
    my ($self) = @_;
    return $self->{calc_eq_lit} if ($self->{calc_eq_lit});
    $self->{calc_eq_lit} = $self->calc() == 16705;
    return $self->{calc_eq_lit};
}

sub calc_eq_seq_if {
    my ($self) = @_;
    return $self->{calc_eq_seq_if} if ($self->{calc_eq_seq_if});
    $self->{calc_eq_seq_if} = $self->calc() == $self->seq_if();
    return $self->{calc_eq_seq_if};
}

sub calc_if {
    my ($self) = @_;
    return $self->{calc_if} if ($self->{calc_if});
    if (1) {
        $self->{calc_if} = 16705;
    }
    return $self->{calc_if};
}

sub calc_if_eq_lit {
    my ($self) = @_;
    return $self->{calc_if_eq_lit} if ($self->{calc_if_eq_lit});
    $self->{calc_if_eq_lit} = $self->calc_if() == 16705;
    return $self->{calc_if_eq_lit};
}

sub calc_if_eq_seq_if {
    my ($self) = @_;
    return $self->{calc_if_eq_seq_if} if ($self->{calc_if_eq_seq_if});
    $self->{calc_if_eq_seq_if} = $self->calc_if() == $self->seq_if();
    return $self->{calc_if_eq_seq_if};
}

sub seq_eq_calc {
    my ($self) = @_;
    return $self->{seq_eq_calc} if ($self->{seq_eq_calc});
    $self->{seq_eq_calc} = $self->seq() == $self->calc();
    return $self->{seq_eq_calc};
}

sub seq_eq_calc_if {
    my ($self) = @_;
    return $self->{seq_eq_calc_if} if ($self->{seq_eq_calc_if});
    $self->{seq_eq_calc_if} = $self->seq() == $self->calc_if();
    return $self->{seq_eq_calc_if};
}

sub seq_eq_lit {
    my ($self) = @_;
    return $self->{seq_eq_lit} if ($self->{seq_eq_lit});
    $self->{seq_eq_lit} = $self->seq() == 16705;
    return $self->{seq_eq_lit};
}

sub seq_eq_seq_if {
    my ($self) = @_;
    return $self->{seq_eq_seq_if} if ($self->{seq_eq_seq_if});
    $self->{seq_eq_seq_if} = $self->seq() == $self->seq_if();
    return $self->{seq_eq_seq_if};
}

sub seq_if_eq_lit {
    my ($self) = @_;
    return $self->{seq_if_eq_lit} if ($self->{seq_if_eq_lit});
    $self->{seq_if_eq_lit} = $self->seq_if() == 16705;
    return $self->{seq_if_eq_lit};
}

sub skip {
    my ($self) = @_;
    return $self->{skip};
}

sub seq {
    my ($self) = @_;
    return $self->{seq};
}

sub seq_if {
    my ($self) = @_;
    return $self->{seq_if};
}

1;
