# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package InstanceInRepeatExpr;

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

    $self->{chunks} = [];
    my $n_chunks = $self->num_chunks();
    for (my $i = 0; $i < $n_chunks; $i++) {
        push @{$self->{chunks}}, InstanceInRepeatExpr::Chunk->new($self->{_io}, $self, $self->{_root});
    }
}

sub num_chunks {
    my ($self) = @_;
    return $self->{num_chunks} if ($self->{num_chunks});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 16);
    $self->{num_chunks} = $self->{_io}->read_u4le();
    $self->{_io}->seek($_pos);
    return $self->{num_chunks};
}

sub chunks {
    my ($self) = @_;
    return $self->{chunks};
}

########################################################################
package InstanceInRepeatExpr::Chunk;

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
    $self->{_root} = $_root;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{offset} = $self->{_io}->read_u4le();
    $self->{len} = $self->{_io}->read_u4le();
}

sub offset {
    my ($self) = @_;
    return $self->{offset};
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

1;
