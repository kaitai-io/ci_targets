# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package DocstringsDocref;

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

    $self->{one} = $self->{_io}->read_u1();
    $self->{two} = $self->{_io}->read_u1();
    $self->{three} = $self->{_io}->read_u1();

    return $self;
}

sub foo {
    my ($self) = @_;
    return $self->{foo} if ($self->{foo});
    $self->{foo} = 1;
    return $self->{foo};
}

sub parse_inst {
    my ($self) = @_;
    return $self->{parse_inst} if ($self->{parse_inst});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{parse_inst} = $self->{_io}->read_u1();
    $self->{_io}->seek($_pos);
    return $self->{parse_inst};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

sub three {
    my ($self) = @_;
    return $self->{three};
}

1;
