# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package CombineBytes;

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

    $self->{bytes_term} = $self->{_io}->read_bytes_term(124, 0, 1, 1);
    $self->{bytes_limit} = $self->{_io}->read_bytes(4);
    $self->{bytes_eos} = $self->{_io}->read_bytes_full();
}

sub limit_or_calc {
    my ($self) = @_;
    return $self->{limit_or_calc} if ($self->{limit_or_calc});
    $self->{limit_or_calc} = (0 ? $self->bytes_limit() : $self->bytes_calc());
    return $self->{limit_or_calc};
}

sub term_or_limit {
    my ($self) = @_;
    return $self->{term_or_limit} if ($self->{term_or_limit});
    $self->{term_or_limit} = (1 ? $self->bytes_term() : $self->bytes_limit());
    return $self->{term_or_limit};
}

sub limit_or_eos {
    my ($self) = @_;
    return $self->{limit_or_eos} if ($self->{limit_or_eos});
    $self->{limit_or_eos} = (1 ? $self->bytes_limit() : $self->bytes_eos());
    return $self->{limit_or_eos};
}

sub eos_or_calc {
    my ($self) = @_;
    return $self->{eos_or_calc} if ($self->{eos_or_calc});
    $self->{eos_or_calc} = (1 ? $self->bytes_eos() : $self->bytes_calc());
    return $self->{eos_or_calc};
}

sub term_or_calc {
    my ($self) = @_;
    return $self->{term_or_calc} if ($self->{term_or_calc});
    $self->{term_or_calc} = (1 ? $self->bytes_term() : $self->bytes_calc());
    return $self->{term_or_calc};
}

sub bytes_calc {
    my ($self) = @_;
    return $self->{bytes_calc} if ($self->{bytes_calc});
    $self->{bytes_calc} = pack('C*', (82, 110, 68));
    return $self->{bytes_calc};
}

sub term_or_eos {
    my ($self) = @_;
    return $self->{term_or_eos} if ($self->{term_or_eos});
    $self->{term_or_eos} = (0 ? $self->bytes_term() : $self->bytes_eos());
    return $self->{term_or_eos};
}

sub bytes_term {
    my ($self) = @_;
    return $self->{bytes_term};
}

sub bytes_limit {
    my ($self) = @_;
    return $self->{bytes_limit};
}

sub bytes_eos {
    my ($self) = @_;
    return $self->{bytes_eos};
}

1;
