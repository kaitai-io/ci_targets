# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIfIntOps;

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

    if (1) {
        $self->{key} = $self->{_io}->read_u8le();
    }
    $self->{skip} = $self->{_io}->read_bytes(8);
    $self->{_raw_bytes} = $self->{_io}->read_bytes(8);
    $self->{bytes} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw_bytes}, $self->key());
    $self->{items} = [];
    my $n_items = 4;
    for (my $i = 0; $i < $n_items; $i++) {
        push @{$self->{items}}, $self->{_io}->read_s1();
    }
}

sub bytes_sub_key {
    my ($self) = @_;
    return $self->{bytes_sub_key} if ($self->{bytes_sub_key});
    $self->{bytes_sub_key} = unpack('C', substr($self->bytes(), $self->key(), 1));
    return $self->{bytes_sub_key};
}

sub items_sub_key {
    my ($self) = @_;
    return $self->{items_sub_key} if ($self->{items_sub_key});
    $self->{items_sub_key} = @{$self->items()}[$self->key()];
    return $self->{items_sub_key};
}

sub key {
    my ($self) = @_;
    return $self->{key};
}

sub skip {
    my ($self) = @_;
    return $self->{skip};
}

sub bytes {
    my ($self) = @_;
    return $self->{bytes};
}

sub items {
    my ($self) = @_;
    return $self->{items};
}

sub _raw_bytes {
    my ($self) = @_;
    return $self->{_raw_bytes};
}

1;
