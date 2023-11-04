# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use EnumToIClassBorder2;

########################################################################
package EnumToIClassBorder1;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ANIMAL_DOG = 4;
our $ANIMAL_CAT = 7;
our $ANIMAL_CHICKEN = 12;

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

    $self->{pet_1} = $self->{_io}->read_u4le();
    $self->{pet_2} = $self->{_io}->read_u4le();
}

sub some_dog {
    my ($self) = @_;
    return $self->{some_dog} if ($self->{some_dog});
    $self->{some_dog} = 4;
    return $self->{some_dog};
}

sub checker {
    my ($self) = @_;
    return $self->{checker} if ($self->{checker});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{checker} = EnumToIClassBorder2->new($self->{_io});
    $self->{_io}->seek($_pos);
    return $self->{checker};
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
