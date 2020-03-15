# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Compress::Zlib;

########################################################################
package ZlibSurrounded;

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

    $self->{pre} = $self->{_io}->read_bytes(4);
    $self->{_raw__raw_zlib} = $self->{_io}->read_bytes(12);
    $self->{_raw_zlib} = Compress::Zlib::uncompress($self->{_raw__raw_zlib});
    my $io__raw_zlib = IO::KaitaiStruct::Stream->new($self->{_raw_zlib});
    $self->{zlib} = ZlibSurrounded::Inflated->new($io__raw_zlib, $self, $self->{_root});
    $self->{post} = $self->{_io}->read_bytes(4);
}

sub pre {
    my ($self) = @_;
    return $self->{pre};
}

sub zlib {
    my ($self) = @_;
    return $self->{zlib};
}

sub post {
    my ($self) = @_;
    return $self->{post};
}

sub _raw_zlib {
    my ($self) = @_;
    return $self->{_raw_zlib};
}

sub _raw__raw_zlib {
    my ($self) = @_;
    return $self->{_raw__raw_zlib};
}

########################################################################
package ZlibSurrounded::Inflated;

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

    $self->{inflated} = $self->{_io}->read_s4le();
}

sub inflated {
    my ($self) = @_;
    return $self->{inflated};
}

1;
