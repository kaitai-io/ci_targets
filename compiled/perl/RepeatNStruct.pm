# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package RepeatNStruct;

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

    $self->{qty} = $self->{_io}->read_u4le();
    $self->{chunks} = ();
    my $n_chunks = $self->qty();
    for (my $i = 0; $i < $n_chunks; $i++) {
        $self->{chunks}[$i] = RepeatNStruct::Chunk->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub qty {
    my ($self) = @_;
    return $self->{qty};
}

sub chunks {
    my ($self) = @_;
    return $self->{chunks};
}

########################################################################
package RepeatNStruct::Chunk;

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

    $self->{offset} = $self->{_io}->read_u4le();
    $self->{len} = $self->{_io}->read_u4le();

    return $self;
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
