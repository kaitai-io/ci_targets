# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package YamlInts;

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

}

sub test_u4_dec {
    my ($self) = @_;
    return $self->{test_u4_dec} if ($self->{test_u4_dec});
    $self->{test_u4_dec} = 4294967295;
    return $self->{test_u4_dec};
}

sub test_u4_hex {
    my ($self) = @_;
    return $self->{test_u4_hex} if ($self->{test_u4_hex});
    $self->{test_u4_hex} = 4294967295;
    return $self->{test_u4_hex};
}

sub test_u8_dec {
    my ($self) = @_;
    return $self->{test_u8_dec} if ($self->{test_u8_dec});
    $self->{test_u8_dec} = 18446744073709551615;
    return $self->{test_u8_dec};
}

sub test_u8_hex {
    my ($self) = @_;
    return $self->{test_u8_hex} if ($self->{test_u8_hex});
    $self->{test_u8_hex} = 18446744073709551615;
    return $self->{test_u8_hex};
}

1;
