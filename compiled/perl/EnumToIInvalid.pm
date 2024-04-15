# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package EnumToIInvalid;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ANIMAL_DOG = 102;
our $ANIMAL_CAT = 124;

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

    $self->{pet_1} = $self->{_io}->read_u1();
    $self->{pet_2} = $self->{_io}->read_u1();
}

sub one_lt_two {
    my ($self) = @_;
    return $self->{one_lt_two} if ($self->{one_lt_two});
    $self->{one_lt_two} = $self->pet_1() < $self->pet_2();
    return $self->{one_lt_two};
}

sub pet_2_eq_int_f {
    my ($self) = @_;
    return $self->{pet_2_eq_int_f} if ($self->{pet_2_eq_int_f});
    $self->{pet_2_eq_int_f} = $self->pet_2() == 110;
    return $self->{pet_2_eq_int_f};
}

sub pet_2_eq_int_t {
    my ($self) = @_;
    return $self->{pet_2_eq_int_t} if ($self->{pet_2_eq_int_t});
    $self->{pet_2_eq_int_t} = $self->pet_2() == 111;
    return $self->{pet_2_eq_int_t};
}

sub pet_2_i {
    my ($self) = @_;
    return $self->{pet_2_i} if ($self->{pet_2_i});
    $self->{pet_2_i} = $self->pet_2();
    return $self->{pet_2_i};
}

sub pet_2_i_to_s {
    my ($self) = @_;
    return $self->{pet_2_i_to_s} if ($self->{pet_2_i_to_s});
    $self->{pet_2_i_to_s} = sprintf('%d', $self->pet_2());
    return $self->{pet_2_i_to_s};
}

sub pet_2_mod {
    my ($self) = @_;
    return $self->{pet_2_mod} if ($self->{pet_2_mod});
    $self->{pet_2_mod} = $self->pet_2() + 32768;
    return $self->{pet_2_mod};
}

sub pet_1 {
    my ($self) = @_;
    return $self->{pet_1};
}

sub pet_2 {
    my ($self) = @_;
    return $self->{pet_2};
}

1;
