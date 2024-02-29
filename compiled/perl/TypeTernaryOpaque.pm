# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use TermStrz;

########################################################################
package TypeTernaryOpaque;

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

    if (!($self->is_hack())) {
        $self->{_raw_dif_wo_hack} = $self->{_io}->read_bytes(12);
        my $io__raw_dif_wo_hack = IO::KaitaiStruct::Stream->new($self->{_raw_dif_wo_hack});
        $self->{dif_wo_hack} = TermStrz->new($io__raw_dif_wo_hack);
    }
    if ($self->is_hack()) {
        $self->{_raw__raw_dif_with_hack} = $self->{_io}->read_bytes(12);
        $self->{_raw_dif_with_hack} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_dif_with_hack}, 3);
        my $io__raw_dif_with_hack = IO::KaitaiStruct::Stream->new($self->{_raw_dif_with_hack});
        $self->{dif_with_hack} = TermStrz->new($io__raw_dif_with_hack);
    }
}

sub dif {
    my ($self) = @_;
    return $self->{dif} if ($self->{dif});
    $self->{dif} = (!($self->is_hack()) ? $self->dif_wo_hack() : $self->dif_with_hack());
    return $self->{dif};
}

sub is_hack {
    my ($self) = @_;
    return $self->{is_hack} if ($self->{is_hack});
    $self->{is_hack} = 0;
    return $self->{is_hack};
}

sub dif_wo_hack {
    my ($self) = @_;
    return $self->{dif_wo_hack};
}

sub dif_with_hack {
    my ($self) = @_;
    return $self->{dif_with_hack};
}

sub _raw_dif_wo_hack {
    my ($self) = @_;
    return $self->{_raw_dif_wo_hack};
}

sub _raw_dif_with_hack {
    my ($self) = @_;
    return $self->{_raw_dif_with_hack};
}

sub _raw__raw_dif_with_hack {
    my ($self) = @_;
    return $self->{_raw__raw_dif_with_hack};
}

1;
