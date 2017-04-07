# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package RepeatNStrz;

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
    $self->{lines} = ();
    my $n_lines = $self->qty();
    for (my $i = 0; $i < $n_lines; $i++) {
        $self->{lines}[$i] = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    }

    return $self;
}

sub qty {
    my ($self) = @_;
    return $self->{qty};
}

sub lines {
    my ($self) = @_;
    return $self->{lines};
}

1;
