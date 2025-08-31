# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package TermStrz4;

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

    $self->{_raw_s1} = $self->{_io}->read_bytes(3);
    my $io__raw_s1 = IO::KaitaiStruct::Stream->new($self->{_raw_s1});
    $self->{s1} = TermStrz4::S1Type->new($io__raw_s1, $self, $self->{_root});
    $self->{skip_term1} = $self->{_io}->read_u1();
    $self->{_raw_s2} = $self->{_io}->read_bytes(3);
    my $io__raw_s2 = IO::KaitaiStruct::Stream->new($self->{_raw_s2});
    $self->{s2} = TermStrz4::S2Type->new($io__raw_s2, $self, $self->{_root});
    $self->{skip_term2} = $self->{_io}->read_u1();
    $self->{_raw_s3} = $self->{_io}->read_bytes(3);
    my $io__raw_s3 = IO::KaitaiStruct::Stream->new($self->{_raw_s3});
    $self->{s3} = TermStrz4::S3Type->new($io__raw_s3, $self, $self->{_root});
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub skip_term1 {
    my ($self) = @_;
    return $self->{skip_term1};
}

sub s2 {
    my ($self) = @_;
    return $self->{s2};
}

sub skip_term2 {
    my ($self) = @_;
    return $self->{skip_term2};
}

sub s3 {
    my ($self) = @_;
    return $self->{s3};
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

########################################################################
package TermStrz4::S1Type;

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

    $self->{value} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 1, 0));
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package TermStrz4::S2Type;

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

    $self->{value} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 0, 0));
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package TermStrz4::S3Type;

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

    $self->{value} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(64, 1, 1, 0));
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
