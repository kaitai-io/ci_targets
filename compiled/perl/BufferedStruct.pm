# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package BufferedStruct;

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

    $self->{len1} = $self->{_io}->read_u4le();
    $self->{_raw_block1} = $self->{_io}->read_bytes($self->len1());
    my $io__raw_block1 = IO::KaitaiStruct::Stream->new($self->{_raw_block1});
    $self->{block1} = BufferedStruct::Block->new($io__raw_block1, $self, $self->{_root});
    $self->{len2} = $self->{_io}->read_u4le();
    $self->{_raw_block2} = $self->{_io}->read_bytes($self->len2());
    my $io__raw_block2 = IO::KaitaiStruct::Stream->new($self->{_raw_block2});
    $self->{block2} = BufferedStruct::Block->new($io__raw_block2, $self, $self->{_root});
    $self->{finisher} = $self->{_io}->read_u4le();

    return $self;
}

sub len1 {
    my ($self) = @_;
    return $self->{len1};
}

sub block1 {
    my ($self) = @_;
    return $self->{block1};
}

sub len2 {
    my ($self) = @_;
    return $self->{len2};
}

sub block2 {
    my ($self) = @_;
    return $self->{block2};
}

sub finisher {
    my ($self) = @_;
    return $self->{finisher};
}

sub _raw_block1 {
    my ($self) = @_;
    return $self->{_raw_block1};
}

sub _raw_block2 {
    my ($self) = @_;
    return $self->{_raw_block2};
}

########################################################################
package BufferedStruct::Block;

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

    $self->{number1} = $self->{_io}->read_u4le();
    $self->{number2} = $self->{_io}->read_u4le();

    return $self;
}

sub number1 {
    my ($self) = @_;
    return $self->{number1};
}

sub number2 {
    my ($self) = @_;
    return $self->{number2};
}

1;
