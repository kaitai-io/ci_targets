# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package StrEncodingsEscapingToS;

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

    $self->{len_of_1} = $self->{_io}->read_u2le();
    $self->{str1_raw} = $self->{_io}->read_bytes($self->len_of_1());
    $self->{len_of_2} = $self->{_io}->read_u2le();
    $self->{str2_raw} = $self->{_io}->read_bytes($self->len_of_2());
    $self->{len_of_3} = $self->{_io}->read_u2le();
    $self->{str3_raw} = $self->{_io}->read_bytes($self->len_of_3());
    $self->{len_of_4} = $self->{_io}->read_u2le();
    $self->{str4_raw} = $self->{_io}->read_bytes($self->len_of_4());
}

sub str1 {
    my ($self) = @_;
    return $self->{str1} if ($self->{str1});
    $self->{str1} = Encode::decode("ASCII\\x", $self->str1_raw());
    return $self->{str1};
}

sub str2 {
    my ($self) = @_;
    return $self->{str2} if ($self->{str2});
    $self->{str2} = Encode::decode("UTF-8\'x", $self->str2_raw());
    return $self->{str2};
}

sub str3 {
    my ($self) = @_;
    return $self->{str3} if ($self->{str3});
    $self->{str3} = Encode::decode("SJIS\"x", $self->str3_raw());
    return $self->{str3};
}

sub str4 {
    my ($self) = @_;
    return $self->{str4} if ($self->{str4});
    $self->{str4} = Encode::decode("IBM437\nx", $self->str4_raw());
    return $self->{str4};
}

sub len_of_1 {
    my ($self) = @_;
    return $self->{len_of_1};
}

sub str1_raw {
    my ($self) = @_;
    return $self->{str1_raw};
}

sub len_of_2 {
    my ($self) = @_;
    return $self->{len_of_2};
}

sub str2_raw {
    my ($self) = @_;
    return $self->{str2_raw};
}

sub len_of_3 {
    my ($self) = @_;
    return $self->{len_of_3};
}

sub str3_raw {
    my ($self) = @_;
    return $self->{str3_raw};
}

sub len_of_4 {
    my ($self) = @_;
    return $self->{len_of_4};
}

sub str4_raw {
    my ($self) = @_;
    return $self->{str4_raw};
}

1;
