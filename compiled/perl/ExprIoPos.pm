# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package ExprIoPos;

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

    $self->{_raw_substream1} = $self->{_io}->read_bytes(16);
    my $io__raw_substream1 = IO::KaitaiStruct::Stream->new($self->{_raw_substream1});
    $self->{substream1} = ExprIoPos::AllPlusNumber->new($io__raw_substream1, $self, $self->{_root});
    $self->{_raw_substream2} = $self->{_io}->read_bytes(14);
    my $io__raw_substream2 = IO::KaitaiStruct::Stream->new($self->{_raw_substream2});
    $self->{substream2} = ExprIoPos::AllPlusNumber->new($io__raw_substream2, $self, $self->{_root});

    return $self;
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
package ExprIoPos::AllPlusNumber;

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

    $self->{my_str} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    $self->{body} = $self->{_io}->read_bytes((($self->_io()->size() - $self->_io()->pos()) - 2));
    $self->{number} = $self->{_io}->read_u2le();

    return $self;
}

sub my_str {
    my ($self) = @_;
    return $self->{my_str};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

sub number {
    my ($self) = @_;
    return $self->{number};
}

1;
