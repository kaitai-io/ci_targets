# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;
use List::Util;

########################################################################
package ExprArray;

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

    $self->{aint} = [];
    my $n_aint = 4;
    for (my $i = 0; $i < $n_aint; $i++) {
        push @{$self->{aint}}, $self->{_io}->read_u4le();
    }
    $self->{afloat} = [];
    my $n_afloat = 3;
    for (my $i = 0; $i < $n_afloat; $i++) {
        push @{$self->{afloat}}, $self->{_io}->read_f8le();
    }
    $self->{astr} = [];
    my $n_astr = 3;
    for (my $i = 0; $i < $n_astr; $i++) {
        push @{$self->{astr}}, Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    }
}

sub aint_first {
    my ($self) = @_;
    return $self->{aint_first} if ($self->{aint_first});
    $self->{aint_first} = @{$self->aint()}[0];
    return $self->{aint_first};
}

sub afloat_size {
    my ($self) = @_;
    return $self->{afloat_size} if ($self->{afloat_size});
    $self->{afloat_size} = scalar(@{$self->afloat()});
    return $self->{afloat_size};
}

sub astr_size {
    my ($self) = @_;
    return $self->{astr_size} if ($self->{astr_size});
    $self->{astr_size} = scalar(@{$self->astr()});
    return $self->{astr_size};
}

sub aint_min {
    my ($self) = @_;
    return $self->{aint_min} if ($self->{aint_min});
    $self->{aint_min} = List::Util::min(@{$self->aint()});
    return $self->{aint_min};
}

sub afloat_min {
    my ($self) = @_;
    return $self->{afloat_min} if ($self->{afloat_min});
    $self->{afloat_min} = List::Util::min(@{$self->afloat()});
    return $self->{afloat_min};
}

sub aint_size {
    my ($self) = @_;
    return $self->{aint_size} if ($self->{aint_size});
    $self->{aint_size} = scalar(@{$self->aint()});
    return $self->{aint_size};
}

sub aint_last {
    my ($self) = @_;
    return $self->{aint_last} if ($self->{aint_last});
    $self->{aint_last} = @{$self->aint()}[-1];
    return $self->{aint_last};
}

sub afloat_last {
    my ($self) = @_;
    return $self->{afloat_last} if ($self->{afloat_last});
    $self->{afloat_last} = @{$self->afloat()}[-1];
    return $self->{afloat_last};
}

sub astr_first {
    my ($self) = @_;
    return $self->{astr_first} if ($self->{astr_first});
    $self->{astr_first} = @{$self->astr()}[0];
    return $self->{astr_first};
}

sub astr_last {
    my ($self) = @_;
    return $self->{astr_last} if ($self->{astr_last});
    $self->{astr_last} = @{$self->astr()}[-1];
    return $self->{astr_last};
}

sub aint_max {
    my ($self) = @_;
    return $self->{aint_max} if ($self->{aint_max});
    $self->{aint_max} = List::Util::max(@{$self->aint()});
    return $self->{aint_max};
}

sub afloat_first {
    my ($self) = @_;
    return $self->{afloat_first} if ($self->{afloat_first});
    $self->{afloat_first} = @{$self->afloat()}[0];
    return $self->{afloat_first};
}

sub astr_min {
    my ($self) = @_;
    return $self->{astr_min} if ($self->{astr_min});
    $self->{astr_min} = List::Util::minstr(@{$self->astr()});
    return $self->{astr_min};
}

sub astr_max {
    my ($self) = @_;
    return $self->{astr_max} if ($self->{astr_max});
    $self->{astr_max} = List::Util::maxstr(@{$self->astr()});
    return $self->{astr_max};
}

sub afloat_max {
    my ($self) = @_;
    return $self->{afloat_max} if ($self->{afloat_max});
    $self->{afloat_max} = List::Util::max(@{$self->afloat()});
    return $self->{afloat_max};
}

sub aint {
    my ($self) = @_;
    return $self->{aint};
}

sub afloat {
    my ($self) = @_;
    return $self->{afloat};
}

sub astr {
    my ($self) = @_;
    return $self->{astr};
}

1;
