# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIoEof;

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

    $self->{_raw_substream1} = $self->{_io}->read_bytes(4);
    my $io__raw_substream1 = IO::KaitaiStruct::Stream->new($self->{_raw_substream1});
    $self->{substream1} = ExprIoEof::OneOrTwo->new($io__raw_substream1, $self, $self->{_root});
    $self->{_raw_substream2} = $self->{_io}->read_bytes(8);
    my $io__raw_substream2 = IO::KaitaiStruct::Stream->new($self->{_raw_substream2});
    $self->{substream2} = ExprIoEof::OneOrTwo->new($io__raw_substream2, $self, $self->{_root});
}

sub substream1 {
    my ($self) = @_;
    return $self->{substream1};
}

sub substream2 {
    my ($self) = @_;
    return $self->{substream2};
}

sub _raw_substream1 {
    my ($self) = @_;
    return $self->{_raw_substream1};
}

sub _raw_substream2 {
    my ($self) = @_;
    return $self->{_raw_substream2};
}

########################################################################
package ExprIoEof::OneOrTwo;

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

    $self->{one} = $self->{_io}->read_u4le();
    if (!($self->_io()->is_eof())) {
        $self->{two} = $self->{_io}->read_u4le();
    }
}

sub reflect_eof {
    my ($self) = @_;
    return $self->{reflect_eof} if ($self->{reflect_eof});
    $self->{reflect_eof} = $self->_io()->is_eof();
    return $self->{reflect_eof};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
