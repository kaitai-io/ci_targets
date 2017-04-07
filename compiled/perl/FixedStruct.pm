# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package FixedStruct;

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


    return $self;
}

sub hdr {
    my ($self) = @_;
    return $self->{hdr} if ($self->{hdr});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{hdr} = FixedStruct::Header->new($self->{_io}, $self, $self->{_root});
    $self->{_io}->seek($_pos);
    return $self->{hdr};
}

########################################################################
package FixedStruct::Header;

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

    $self->{magic1} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 49)));
    $self->{uint8} = $self->{_io}->read_u1();
    $self->{sint8} = $self->{_io}->read_s1();
    $self->{magic_uint} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 85, 45, 68, 69, 70)));
    $self->{uint16} = $self->{_io}->read_u2le();
    $self->{uint32} = $self->{_io}->read_u4le();
    $self->{uint64} = $self->{_io}->read_u8le();
    $self->{magic_sint} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 83, 45, 68, 69, 70)));
    $self->{sint16} = $self->{_io}->read_s2le();
    $self->{sint32} = $self->{_io}->read_s4le();
    $self->{sint64} = $self->{_io}->read_s8le();
    $self->{magic_uint_le} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 85, 45, 76, 69)));
    $self->{uint16le} = $self->{_io}->read_u2le();
    $self->{uint32le} = $self->{_io}->read_u4le();
    $self->{uint64le} = $self->{_io}->read_u8le();
    $self->{magic_sint_le} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 83, 45, 76, 69)));
    $self->{sint16le} = $self->{_io}->read_s2le();
    $self->{sint32le} = $self->{_io}->read_s4le();
    $self->{sint64le} = $self->{_io}->read_s8le();
    $self->{magic_uint_be} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 85, 45, 66, 69)));
    $self->{uint16be} = $self->{_io}->read_u2be();
    $self->{uint32be} = $self->{_io}->read_u4be();
    $self->{uint64be} = $self->{_io}->read_u8be();
    $self->{magic_sint_be} = $self->{_io}->ensure_fixed_contents(pack('C*', (80, 65, 67, 75, 45, 83, 45, 66, 69)));
    $self->{sint16be} = $self->{_io}->read_s2be();
    $self->{sint32be} = $self->{_io}->read_s4be();
    $self->{sint64be} = $self->{_io}->read_s8be();

    return $self;
}

sub magic1 {
    my ($self) = @_;
    return $self->{magic1};
}

sub uint8 {
    my ($self) = @_;
    return $self->{uint8};
}

sub sint8 {
    my ($self) = @_;
    return $self->{sint8};
}

sub magic_uint {
    my ($self) = @_;
    return $self->{magic_uint};
}

sub uint16 {
    my ($self) = @_;
    return $self->{uint16};
}

sub uint32 {
    my ($self) = @_;
    return $self->{uint32};
}

sub uint64 {
    my ($self) = @_;
    return $self->{uint64};
}

sub magic_sint {
    my ($self) = @_;
    return $self->{magic_sint};
}

sub sint16 {
    my ($self) = @_;
    return $self->{sint16};
}

sub sint32 {
    my ($self) = @_;
    return $self->{sint32};
}

sub sint64 {
    my ($self) = @_;
    return $self->{sint64};
}

sub magic_uint_le {
    my ($self) = @_;
    return $self->{magic_uint_le};
}

sub uint16le {
    my ($self) = @_;
    return $self->{uint16le};
}

sub uint32le {
    my ($self) = @_;
    return $self->{uint32le};
}

sub uint64le {
    my ($self) = @_;
    return $self->{uint64le};
}

sub magic_sint_le {
    my ($self) = @_;
    return $self->{magic_sint_le};
}

sub sint16le {
    my ($self) = @_;
    return $self->{sint16le};
}

sub sint32le {
    my ($self) = @_;
    return $self->{sint32le};
}

sub sint64le {
    my ($self) = @_;
    return $self->{sint64le};
}

sub magic_uint_be {
    my ($self) = @_;
    return $self->{magic_uint_be};
}

sub uint16be {
    my ($self) = @_;
    return $self->{uint16be};
}

sub uint32be {
    my ($self) = @_;
    return $self->{uint32be};
}

sub uint64be {
    my ($self) = @_;
    return $self->{uint64be};
}

sub magic_sint_be {
    my ($self) = @_;
    return $self->{magic_sint_be};
}

sub sint16be {
    my ($self) = @_;
    return $self->{sint16be};
}

sub sint32be {
    my ($self) = @_;
    return $self->{sint32be};
}

sub sint64be {
    my ($self) = @_;
    return $self->{sint64be};
}

1;
