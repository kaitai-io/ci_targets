# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package TypeTernary;

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
        $self->{_raw_dif_wo_hack} = $self->{_io}->read_bytes(1);
        my $io__raw_dif_wo_hack = IO::KaitaiStruct::Stream->new($self->{_raw_dif_wo_hack});
        $self->{dif_wo_hack} = TypeTernary::Dummy->new($io__raw_dif_wo_hack, $self, $self->{_root});
    }
    $self->{_raw__raw_dif_with_hack} = $self->{_io}->read_bytes(1);
    $self->{_raw_dif_with_hack} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_dif_with_hack}, 3);
    my $io__raw_dif_with_hack = IO::KaitaiStruct::Stream->new($self->{_raw_dif_with_hack});
    $self->{dif_with_hack} = TypeTernary::Dummy->new($io__raw_dif_with_hack, $self, $self->{_root});
}

sub is_hack {
    my ($self) = @_;
    return $self->{is_hack} if ($self->{is_hack});
    $self->{is_hack} = 1;
    return $self->{is_hack};
}

sub dif {
    my ($self) = @_;
    return $self->{dif} if ($self->{dif});
    $self->{dif} = (!($self->is_hack()) ? $self->dif_wo_hack() : $self->dif_with_hack());
    return $self->{dif};
}

sub dif_value {
    my ($self) = @_;
    return $self->{dif_value} if ($self->{dif_value});
    $self->{dif_value} = $self->dif()->value();
    return $self->{dif_value};
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

########################################################################
package TypeTernary::Dummy;

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

    $self->{value} = $self->{_io}->read_u1();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
