# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package ExprStrEncodings;

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
    $self->{str1} = Encode::decode("ASCII", $self->{_io}->read_bytes($self->len_of_1()));
    $self->{len_of_2} = $self->{_io}->read_u2le();
    $self->{str2} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len_of_2()));
    $self->{len_of_3} = $self->{_io}->read_u2le();
    $self->{str3} = Encode::decode("SJIS", $self->{_io}->read_bytes($self->len_of_3()));
    $self->{len_of_4} = $self->{_io}->read_u2le();
    $self->{str4} = Encode::decode("CP437", $self->{_io}->read_bytes($self->len_of_4()));
}

sub str4_gt_str_from_bytes {
    my ($self) = @_;
    return $self->{str4_gt_str_from_bytes} if ($self->{str4_gt_str_from_bytes});
    $self->{str4_gt_str_from_bytes} = $self->str4() gt Encode::decode("CP437", pack('C*', (180)));
    return $self->{str4_gt_str_from_bytes};
}

sub str1_eq {
    my ($self) = @_;
    return $self->{str1_eq} if ($self->{str1_eq});
    $self->{str1_eq} = $self->str1() eq "Some ASCII";
    return $self->{str1_eq};
}

sub str4_eq {
    my ($self) = @_;
    return $self->{str4_eq} if ($self->{str4_eq});
    $self->{str4_eq} = $self->str4() eq "\N{U+2591}\N{U+2592}\N{U+2593}";
    return $self->{str4_eq};
}

sub str3_eq_str2 {
    my ($self) = @_;
    return $self->{str3_eq_str2} if ($self->{str3_eq_str2});
    $self->{str3_eq_str2} = $self->str3() eq $self->str2();
    return $self->{str3_eq_str2};
}

sub str4_gt_str_calc {
    my ($self) = @_;
    return $self->{str4_gt_str_calc} if ($self->{str4_gt_str_calc});
    $self->{str4_gt_str_calc} = $self->str4() gt "\N{U+2524}";
    return $self->{str4_gt_str_calc};
}

sub str2_eq {
    my ($self) = @_;
    return $self->{str2_eq} if ($self->{str2_eq});
    $self->{str2_eq} = $self->str2() eq "\N{U+3053}\N{U+3093}\N{U+306b}\N{U+3061}\N{U+306f}";
    return $self->{str2_eq};
}

sub str3_eq {
    my ($self) = @_;
    return $self->{str3_eq} if ($self->{str3_eq});
    $self->{str3_eq} = $self->str3() eq "\N{U+3053}\N{U+3093}\N{U+306b}\N{U+3061}\N{U+306f}";
    return $self->{str3_eq};
}

sub len_of_1 {
    my ($self) = @_;
    return $self->{len_of_1};
}

sub str1 {
    my ($self) = @_;
    return $self->{str1};
}

sub len_of_2 {
    my ($self) = @_;
    return $self->{len_of_2};
}

sub str2 {
    my ($self) = @_;
    return $self->{str2};
}

sub len_of_3 {
    my ($self) = @_;
    return $self->{len_of_3};
}

sub str3 {
    my ($self) = @_;
    return $self->{str3};
}

sub len_of_4 {
    my ($self) = @_;
    return $self->{len_of_4};
}

sub str4 {
    my ($self) = @_;
    return $self->{str4};
}

1;
