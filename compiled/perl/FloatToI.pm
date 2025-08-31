# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package FloatToI;

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

    $self->{single_value} = $self->{_io}->read_f4le();
    $self->{double_value} = $self->{_io}->read_f8le();
    if (1) {
        $self->{single_value_if} = $self->{_io}->read_f4be();
    }
    if (1) {
        $self->{double_value_if} = $self->{_io}->read_f8be();
    }
}

sub calc_float1 {
    my ($self) = @_;
    return $self->{calc_float1} if ($self->{calc_float1});
    $self->{calc_float1} = 1.234;
    return $self->{calc_float1};
}

sub calc_float2 {
    my ($self) = @_;
    return $self->{calc_float2} if ($self->{calc_float2});
    $self->{calc_float2} = 1.5;
    return $self->{calc_float2};
}

sub calc_float3 {
    my ($self) = @_;
    return $self->{calc_float3} if ($self->{calc_float3});
    $self->{calc_float3} = 1.9;
    return $self->{calc_float3};
}

sub calc_float4 {
    my ($self) = @_;
    return $self->{calc_float4} if ($self->{calc_float4});
    $self->{calc_float4} = -2.7;
    return $self->{calc_float4};
}

sub calc_if {
    my ($self) = @_;
    return $self->{calc_if} if ($self->{calc_if});
    $self->{calc_if} = 13.9;
    return $self->{calc_if};
}

sub calc_if_i {
    my ($self) = @_;
    return $self->{calc_if_i} if ($self->{calc_if_i});
    $self->{calc_if_i} = int($self->calc_if());
    return $self->{calc_if_i};
}

sub double_i {
    my ($self) = @_;
    return $self->{double_i} if ($self->{double_i});
    $self->{double_i} = int($self->double_value());
    return $self->{double_i};
}

sub double_if_i {
    my ($self) = @_;
    return $self->{double_if_i} if ($self->{double_if_i});
    $self->{double_if_i} = int($self->double_value_if());
    return $self->{double_if_i};
}

sub float1_i {
    my ($self) = @_;
    return $self->{float1_i} if ($self->{float1_i});
    $self->{float1_i} = int($self->calc_float1());
    return $self->{float1_i};
}

sub float2_i {
    my ($self) = @_;
    return $self->{float2_i} if ($self->{float2_i});
    $self->{float2_i} = int($self->calc_float2());
    return $self->{float2_i};
}

sub float3_i {
    my ($self) = @_;
    return $self->{float3_i} if ($self->{float3_i});
    $self->{float3_i} = int($self->calc_float3());
    return $self->{float3_i};
}

sub float4_i {
    my ($self) = @_;
    return $self->{float4_i} if ($self->{float4_i});
    $self->{float4_i} = int($self->calc_float4());
    return $self->{float4_i};
}

sub single_i {
    my ($self) = @_;
    return $self->{single_i} if ($self->{single_i});
    $self->{single_i} = int($self->single_value());
    return $self->{single_i};
}

sub single_if_i {
    my ($self) = @_;
    return $self->{single_if_i} if ($self->{single_if_i});
    $self->{single_if_i} = int($self->single_value_if());
    return $self->{single_if_i};
}

sub single_value {
    my ($self) = @_;
    return $self->{single_value};
}

sub double_value {
    my ($self) = @_;
    return $self->{double_value};
}

sub single_value_if {
    my ($self) = @_;
    return $self->{single_value_if};
}

sub double_value_if {
    my ($self) = @_;
    return $self->{double_value_if};
}

1;
