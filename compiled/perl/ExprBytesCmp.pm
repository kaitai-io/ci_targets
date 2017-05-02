# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package ExprBytesCmp;

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

    $self->{one} = $self->{_io}->read_bytes(1);
    $self->{two} = $self->{_io}->read_bytes(3);

    return $self;
}

sub is_le {
    my ($self) = @_;
    return $self->{is_le} if ($self->{is_le});
    $self->{is_le} = $self->two() le $self->ack2();
    return $self->{is_le};
}

sub ack {
    my ($self) = @_;
    return $self->{ack} if ($self->{ack});
    $self->{ack} = pack('C*', (65, 67, 75));
    return $self->{ack};
}

sub is_gt2 {
    my ($self) = @_;
    return $self->{is_gt2} if ($self->{is_gt2});
    $self->{is_gt2} = $self->hi_val() gt $self->two();
    return $self->{is_gt2};
}

sub is_gt {
    my ($self) = @_;
    return $self->{is_gt} if ($self->{is_gt});
    $self->{is_gt} = $self->two() gt $self->ack2();
    return $self->{is_gt};
}

sub ack2 {
    my ($self) = @_;
    return $self->{ack2} if ($self->{ack2});
    $self->{ack2} = pack('C*', (65, 67, 75, 50));
    return $self->{ack2};
}

sub is_eq {
    my ($self) = @_;
    return $self->{is_eq} if ($self->{is_eq});
    $self->{is_eq} = $self->two() eq $self->ack();
    return $self->{is_eq};
}

sub is_lt2 {
    my ($self) = @_;
    return $self->{is_lt2} if ($self->{is_lt2});
    $self->{is_lt2} = $self->one() lt $self->two();
    return $self->{is_lt2};
}

sub is_ge {
    my ($self) = @_;
    return $self->{is_ge} if ($self->{is_ge});
    $self->{is_ge} = $self->two() ge $self->ack2();
    return $self->{is_ge};
}

sub hi_val {
    my ($self) = @_;
    return $self->{hi_val} if ($self->{hi_val});
    $self->{hi_val} = pack('C*', (144, 67));
    return $self->{hi_val};
}

sub is_ne {
    my ($self) = @_;
    return $self->{is_ne} if ($self->{is_ne});
    $self->{is_ne} = $self->two() ne $self->ack();
    return $self->{is_ne};
}

sub is_lt {
    my ($self) = @_;
    return $self->{is_lt} if ($self->{is_lt});
    $self->{is_lt} = $self->two() lt $self->ack2();
    return $self->{is_lt};
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
