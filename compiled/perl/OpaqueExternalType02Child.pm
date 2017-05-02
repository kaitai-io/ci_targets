# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package OpaqueExternalType02Child;

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

    $self->{s1} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 1, 1));
    $self->{s2} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 0, 1));
    $self->{s3} = OpaqueExternalType02Child::OpaqueExternalType02ChildChild->new($self->{_io}, $self, $self->{_root});

    return $self;
}

sub some_method {
    my ($self) = @_;
    return $self->{some_method} if ($self->{some_method});
    $self->{some_method} = 1;
    return $self->{some_method};
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

########################################################################
package OpaqueExternalType02Child::OpaqueExternalType02ChildChild;

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

    if ($self->_root()->some_method()) {
        $self->{s3} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(64, 1, 1, 1));
    }

    return $self;
}

sub s3 {
    my ($self) = @_;
    return $self->{s3};
}

1;
