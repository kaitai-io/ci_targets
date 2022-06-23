# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package ExprStrOps;

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

    $self->{one} = Encode::decode("ASCII", $self->{_io}->read_bytes(5));
}

sub one_substr_3_to_3 {
    my ($self) = @_;
    return $self->{one_substr_3_to_3} if ($self->{one_substr_3_to_3});
    $self->{one_substr_3_to_3} = substr($self->one(), 3, (3) - (3));
    return $self->{one_substr_3_to_3};
}

sub to_i_r8 {
    my ($self) = @_;
    return $self->{to_i_r8} if ($self->{to_i_r8});
    $self->{to_i_r8} = oct("721");
    return $self->{to_i_r8};
}

sub to_i_r16 {
    my ($self) = @_;
    return $self->{to_i_r16} if ($self->{to_i_r16});
    $self->{to_i_r16} = hex("47cf");
    return $self->{to_i_r16};
}

sub two_substr_0_to_10 {
    my ($self) = @_;
    return $self->{two_substr_0_to_10} if ($self->{two_substr_0_to_10});
    $self->{two_substr_0_to_10} = substr($self->two(), 0, (10) - (0));
    return $self->{two_substr_0_to_10};
}

sub one_len {
    my ($self) = @_;
    return $self->{one_len} if ($self->{one_len});
    $self->{one_len} = length($self->one());
    return $self->{one_len};
}

sub two_len {
    my ($self) = @_;
    return $self->{two_len} if ($self->{two_len});
    $self->{two_len} = length($self->two());
    return $self->{two_len};
}

sub one_substr_2_to_5 {
    my ($self) = @_;
    return $self->{one_substr_2_to_5} if ($self->{one_substr_2_to_5});
    $self->{one_substr_2_to_5} = substr($self->one(), 2, (5) - (2));
    return $self->{one_substr_2_to_5};
}

sub to_i_r2 {
    my ($self) = @_;
    return $self->{to_i_r2} if ($self->{to_i_r2});
    $self->{to_i_r2} = oct('0b' . "1010110");
    return $self->{to_i_r2};
}

sub two_rev {
    my ($self) = @_;
    return $self->{two_rev} if ($self->{two_rev});
    $self->{two_rev} = scalar(reverse($self->two()));
    return $self->{two_rev};
}

sub two {
    my ($self) = @_;
    return $self->{two} if ($self->{two});
    $self->{two} = "0123456789";
    return $self->{two};
}

sub two_substr_4_to_10 {
    my ($self) = @_;
    return $self->{two_substr_4_to_10} if ($self->{two_substr_4_to_10});
    $self->{two_substr_4_to_10} = substr($self->two(), 4, (10) - (4));
    return $self->{two_substr_4_to_10};
}

sub to_i_r10 {
    my ($self) = @_;
    return $self->{to_i_r10} if ($self->{to_i_r10});
    $self->{to_i_r10} = "-072" + 0;
    return $self->{to_i_r10};
}

sub two_substr_0_to_7 {
    my ($self) = @_;
    return $self->{two_substr_0_to_7} if ($self->{two_substr_0_to_7});
    $self->{two_substr_0_to_7} = substr($self->two(), 0, (7) - (0));
    return $self->{two_substr_0_to_7};
}

sub to_i_attr {
    my ($self) = @_;
    return $self->{to_i_attr} if ($self->{to_i_attr});
    $self->{to_i_attr} = "9173" + 0;
    return $self->{to_i_attr};
}

sub one_substr_0_to_3 {
    my ($self) = @_;
    return $self->{one_substr_0_to_3} if ($self->{one_substr_0_to_3});
    $self->{one_substr_0_to_3} = substr($self->one(), 0, (3) - (0));
    return $self->{one_substr_0_to_3};
}

sub one_rev {
    my ($self) = @_;
    return $self->{one_rev} if ($self->{one_rev});
    $self->{one_rev} = scalar(reverse($self->one()));
    return $self->{one_rev};
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

1;
