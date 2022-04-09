# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package StrEncodingsUtf16;

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

    $self->{len_be} = $self->{_io}->read_u4le();
    $self->{_raw_be_bom_removed} = $self->{_io}->read_bytes($self->len_be());
    my $io__raw_be_bom_removed = IO::KaitaiStruct::Stream->new($self->{_raw_be_bom_removed});
    $self->{be_bom_removed} = StrEncodingsUtf16::StrBeBomRemoved->new($io__raw_be_bom_removed, $self, $self->{_root});
    $self->{len_le} = $self->{_io}->read_u4le();
    $self->{_raw_le_bom_removed} = $self->{_io}->read_bytes($self->len_le());
    my $io__raw_le_bom_removed = IO::KaitaiStruct::Stream->new($self->{_raw_le_bom_removed});
    $self->{le_bom_removed} = StrEncodingsUtf16::StrLeBomRemoved->new($io__raw_le_bom_removed, $self, $self->{_root});
}

sub len_be {
    my ($self) = @_;
    return $self->{len_be};
}

sub be_bom_removed {
    my ($self) = @_;
    return $self->{be_bom_removed};
}

sub len_le {
    my ($self) = @_;
    return $self->{len_le};
}

sub le_bom_removed {
    my ($self) = @_;
    return $self->{le_bom_removed};
}

sub _raw_be_bom_removed {
    my ($self) = @_;
    return $self->{_raw_be_bom_removed};
}

sub _raw_le_bom_removed {
    my ($self) = @_;
    return $self->{_raw_le_bom_removed};
}

########################################################################
package StrEncodingsUtf16::StrBeBomRemoved;

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

    $self->{bom} = $self->{_io}->read_u2be();
    $self->{str} = Encode::decode("UTF-16BE", $self->{_io}->read_bytes_full());
}

sub bom {
    my ($self) = @_;
    return $self->{bom};
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

########################################################################
package StrEncodingsUtf16::StrLeBomRemoved;

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

    $self->{bom} = $self->{_io}->read_u2le();
    $self->{str} = Encode::decode("UTF-16LE", $self->{_io}->read_bytes_full());
}

sub bom {
    my ($self) = @_;
    return $self->{bom};
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

1;
