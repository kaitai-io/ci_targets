# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package IntegersDoubleOverflow;

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

    $self->{signed_safe_min_be} = $self->{_io}->read_s8be();
    $self->{signed_safe_min_le} = $self->{_io}->read_s8le();
    $self->{signed_safe_max_be} = $self->{_io}->read_s8be();
    $self->{signed_safe_max_le} = $self->{_io}->read_s8le();
    $self->{signed_unsafe_neg_be} = $self->{_io}->read_s8be();
    $self->{signed_unsafe_neg_le} = $self->{_io}->read_s8le();
    $self->{signed_unsafe_pos_be} = $self->{_io}->read_s8be();
    $self->{signed_unsafe_pos_le} = $self->{_io}->read_s8le();
}

sub unsigned_safe_max_be {
    my ($self) = @_;
    return $self->{unsigned_safe_max_be} if ($self->{unsigned_safe_max_be});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(16);
    $self->{unsigned_safe_max_be} = $self->{_io}->read_u8be();
    $self->{_io}->seek($_pos);
    return $self->{unsigned_safe_max_be};
}

sub unsigned_safe_max_le {
    my ($self) = @_;
    return $self->{unsigned_safe_max_le} if ($self->{unsigned_safe_max_le});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(24);
    $self->{unsigned_safe_max_le} = $self->{_io}->read_u8le();
    $self->{_io}->seek($_pos);
    return $self->{unsigned_safe_max_le};
}

sub unsigned_unsafe_pos_be {
    my ($self) = @_;
    return $self->{unsigned_unsafe_pos_be} if ($self->{unsigned_unsafe_pos_be});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(48);
    $self->{unsigned_unsafe_pos_be} = $self->{_io}->read_u8be();
    $self->{_io}->seek($_pos);
    return $self->{unsigned_unsafe_pos_be};
}

sub unsigned_unsafe_pos_le {
    my ($self) = @_;
    return $self->{unsigned_unsafe_pos_le} if ($self->{unsigned_unsafe_pos_le});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(56);
    $self->{unsigned_unsafe_pos_le} = $self->{_io}->read_u8le();
    $self->{_io}->seek($_pos);
    return $self->{unsigned_unsafe_pos_le};
}

sub signed_safe_min_be {
    my ($self) = @_;
    return $self->{signed_safe_min_be};
}

sub signed_safe_min_le {
    my ($self) = @_;
    return $self->{signed_safe_min_le};
}

sub signed_safe_max_be {
    my ($self) = @_;
    return $self->{signed_safe_max_be};
}

sub signed_safe_max_le {
    my ($self) = @_;
    return $self->{signed_safe_max_le};
}

sub signed_unsafe_neg_be {
    my ($self) = @_;
    return $self->{signed_unsafe_neg_be};
}

sub signed_unsafe_neg_le {
    my ($self) = @_;
    return $self->{signed_unsafe_neg_le};
}

sub signed_unsafe_pos_be {
    my ($self) = @_;
    return $self->{signed_unsafe_pos_be};
}

sub signed_unsafe_pos_le {
    my ($self) = @_;
    return $self->{signed_unsafe_pos_le};
}

1;
