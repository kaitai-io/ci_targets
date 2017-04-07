# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;
use ImportsCircularB;

########################################################################
package ImportsCircularA;

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

    $self->{code} = $self->{_io}->read_u1();
    $self->{two} = ImportsCircularB->new($self->{_io});

    return $self;
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
