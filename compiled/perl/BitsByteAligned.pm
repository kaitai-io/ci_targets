# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package BitsByteAligned;

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

    $self->{one} = $self->{_io}->read_bits_int_be(6);
    $self->{byte_1} = $self->{_io}->read_u1();
    $self->{two} = $self->{_io}->read_bits_int_be(3);
    $self->{three} = $self->{_io}->read_bits_int_be(1);
    $self->{byte_2} = $self->{_io}->read_bytes(1);
    $self->{four} = $self->{_io}->read_bits_int_be(14);
    $self->{_raw_byte_3} = $self->{_io}->read_bytes(3);
    my $io__raw_byte_3 = IO::KaitaiStruct::Stream->new($self->{_raw_byte_3});
    $self->{byte_3} = BitsByteAligned::Foo->new($io__raw_byte_3, $self, $self->{_root});
    $self->{full_byte} = $self->{_io}->read_bits_int_be(8);
    $self->{byte_4} = $self->{_io}->read_u1();
    $self->{five} = $self->{_io}->read_bits_int_be(22);
    $self->{bytes_term} = $self->{_io}->read_bytes_term(69, 1, 1, 1);
    $self->{six} = $self->{_io}->read_bits_int_be(8);
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub byte_1 {
    my ($self) = @_;
    return $self->{byte_1};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

sub three {
    my ($self) = @_;
    return $self->{three};
}

sub byte_2 {
    my ($self) = @_;
    return $self->{byte_2};
}

sub four {
    my ($self) = @_;
    return $self->{four};
}

sub byte_3 {
    my ($self) = @_;
    return $self->{byte_3};
}

sub full_byte {
    my ($self) = @_;
    return $self->{full_byte};
}

sub byte_4 {
    my ($self) = @_;
    return $self->{byte_4};
}

sub five {
    my ($self) = @_;
    return $self->{five};
}

sub bytes_term {
    my ($self) = @_;
    return $self->{bytes_term};
}

sub six {
    my ($self) = @_;
    return $self->{six};
}

sub _raw_byte_3 {
    my ($self) = @_;
    return $self->{_raw_byte_3};
}

########################################################################
package BitsByteAligned::Foo;

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

    $self->{inner} = $self->{_io}->read_bits_int_be(19);
}

sub inner {
    my ($self) = @_;
    return $self->{inner};
}

1;
