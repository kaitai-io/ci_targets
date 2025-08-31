# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package StructPadTermEqual;

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

    $self->{_raw_s1} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 64), 64, 0);
    my $io__raw_s1 = IO::KaitaiStruct::Stream->new($self->{_raw_s1});
    $self->{s1} = StructPadTermEqual::BytesWrapper->new($io__raw_s1, $self, $self->{_root});
    $self->{_raw_s2} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 64, 1);
    my $io__raw_s2 = IO::KaitaiStruct::Stream->new($self->{_raw_s2});
    $self->{s2} = StructPadTermEqual::BytesWrapper->new($io__raw_s2, $self, $self->{_root});
    $self->{_raw_s3} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 43, 0);
    my $io__raw_s3 = IO::KaitaiStruct::Stream->new($self->{_raw_s3});
    $self->{s3} = StructPadTermEqual::BytesWrapper->new($io__raw_s3, $self, $self->{_root});
    $self->{_raw_s4} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 46), 46, 1);
    my $io__raw_s4 = IO::KaitaiStruct::Stream->new($self->{_raw_s4});
    $self->{s4} = StructPadTermEqual::BytesWrapper->new($io__raw_s4, $self, $self->{_root});
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub s2 {
    my ($self) = @_;
    return $self->{s2};
}

sub s3 {
    my ($self) = @_;
    return $self->{s3};
}

sub s4 {
    my ($self) = @_;
    return $self->{s4};
}

sub _raw_s1 {
    my ($self) = @_;
    return $self->{_raw_s1};
}

sub _raw_s2 {
    my ($self) = @_;
    return $self->{_raw_s2};
}

sub _raw_s3 {
    my ($self) = @_;
    return $self->{_raw_s3};
}

sub _raw_s4 {
    my ($self) = @_;
    return $self->{_raw_s4};
}

########################################################################
package StructPadTermEqual::BytesWrapper;

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

    $self->{value} = $self->{_io}->read_bytes_full();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
