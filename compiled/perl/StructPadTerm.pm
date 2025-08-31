# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package StructPadTerm;

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

    $self->{_raw_str_pad} = IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 64);
    my $io__raw_str_pad = IO::KaitaiStruct::Stream->new($self->{_raw_str_pad});
    $self->{str_pad} = StructPadTerm::BytesWrapper->new($io__raw_str_pad, $self, $self->{_root});
    $self->{_raw_str_term} = IO::KaitaiStruct::Stream::bytes_terminate($self->{_io}->read_bytes(20), 64, 0);
    my $io__raw_str_term = IO::KaitaiStruct::Stream->new($self->{_raw_str_term});
    $self->{str_term} = StructPadTerm::BytesWrapper->new($io__raw_str_term, $self, $self->{_root});
    $self->{_raw_str_term_and_pad} = IO::KaitaiStruct::Stream::bytes_terminate(IO::KaitaiStruct::Stream::bytes_strip_right($self->{_io}->read_bytes(20), 43), 64, 0);
    my $io__raw_str_term_and_pad = IO::KaitaiStruct::Stream->new($self->{_raw_str_term_and_pad});
    $self->{str_term_and_pad} = StructPadTerm::BytesWrapper->new($io__raw_str_term_and_pad, $self, $self->{_root});
    $self->{_raw_str_term_include} = IO::KaitaiStruct::Stream::bytes_terminate($self->{_io}->read_bytes(20), 64, 1);
    my $io__raw_str_term_include = IO::KaitaiStruct::Stream->new($self->{_raw_str_term_include});
    $self->{str_term_include} = StructPadTerm::BytesWrapper->new($io__raw_str_term_include, $self, $self->{_root});
}

sub str_pad {
    my ($self) = @_;
    return $self->{str_pad};
}

sub str_term {
    my ($self) = @_;
    return $self->{str_term};
}

sub str_term_and_pad {
    my ($self) = @_;
    return $self->{str_term_and_pad};
}

sub str_term_include {
    my ($self) = @_;
    return $self->{str_term_include};
}

sub _raw_str_pad {
    my ($self) = @_;
    return $self->{_raw_str_pad};
}

sub _raw_str_term {
    my ($self) = @_;
    return $self->{_raw_str_term};
}

sub _raw_str_term_and_pad {
    my ($self) = @_;
    return $self->{_raw_str_term_and_pad};
}

sub _raw_str_term_include {
    my ($self) = @_;
    return $self->{_raw_str_term_include};
}

########################################################################
package StructPadTerm::BytesWrapper;

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
