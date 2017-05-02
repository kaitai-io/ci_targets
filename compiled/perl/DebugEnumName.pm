# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package DebugEnumName;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $TEST_ENUM1_ENUM_VALUE_80 = 80;

our $TEST_ENUM2_ENUM_VALUE_65 = 65;

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;

    $self->{one} = $self->{_io}->read_u1();
    $self->{array_of_ints} = ();
    my $n_array_of_ints = 1;
    for (my $i = 0; $i < $n_array_of_ints; $i++) {
        $self->{array_of_ints}[$i] = $self->{_io}->read_u1();
    }
    $self->{test_type} = DebugEnumName::TestSubtype->new($self->{_io}, $self, $self->{_root});

    return $self;
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub array_of_ints {
    my ($self) = @_;
    return $self->{array_of_ints};
}

sub test_type {
    my ($self) = @_;
    return $self->{test_type};
}

########################################################################
package DebugEnumName::TestSubtype;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $INNER_ENUM1_ENUM_VALUE_67 = 67;

our $INNER_ENUM2_ENUM_VALUE_11 = 11;

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;

    $self->{field1} = $self->{_io}->read_u1();
    $self->{field2} = $self->{_io}->read_u1();

    return $self;
}

sub instance_field {
    my ($self) = @_;
    return $self->{instance_field} if ($self->{instance_field});
    $self->{instance_field} = ($self->field2() & 15);
    return $self->{instance_field};
}

sub field1 {
    my ($self) = @_;
    return $self->{field1};
}

sub field2 {
    my ($self) = @_;
    return $self->{field2};
}

1;
