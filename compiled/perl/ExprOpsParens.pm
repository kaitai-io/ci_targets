# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprOpsParens;

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

}

sub i_m13 {
    my ($self) = @_;
    return $self->{i_m13} if ($self->{i_m13});
    $self->{i_m13} = -13;
    return $self->{i_m13};
}

sub str_concat_len {
    my ($self) = @_;
    return $self->{str_concat_len} if ($self->{str_concat_len});
    $self->{str_concat_len} = length($self->str_0_to_4() . $self->str_5_to_9());
    return $self->{str_concat_len};
}

sub str_concat_substr_2_to_7 {
    my ($self) = @_;
    return $self->{str_concat_substr_2_to_7} if ($self->{str_concat_substr_2_to_7});
    $self->{str_concat_substr_2_to_7} = substr($self->str_0_to_4() . $self->str_5_to_9(), 2, (7) - (2));
    return $self->{str_concat_substr_2_to_7};
}

sub str_0_to_4 {
    my ($self) = @_;
    return $self->{str_0_to_4} if ($self->{str_0_to_4});
    $self->{str_0_to_4} = "01234";
    return $self->{str_0_to_4};
}

sub str_5_to_9 {
    my ($self) = @_;
    return $self->{str_5_to_9} if ($self->{str_5_to_9});
    $self->{str_5_to_9} = "56789";
    return $self->{str_5_to_9};
}

sub str_concat_rev {
    my ($self) = @_;
    return $self->{str_concat_rev} if ($self->{str_concat_rev});
    $self->{str_concat_rev} = scalar(reverse($self->str_0_to_4() . $self->str_5_to_9()));
    return $self->{str_concat_rev};
}

sub bool_eq {
    my ($self) = @_;
    return $self->{bool_eq} if ($self->{bool_eq});
    $self->{bool_eq} = 0 == 1;
    return $self->{bool_eq};
}

sub bool_and {
    my ($self) = @_;
    return $self->{bool_and} if ($self->{bool_and});
    $self->{bool_and} =  ((0) && (1)) ;
    return $self->{bool_and};
}

sub i_sum_to_str {
    my ($self) = @_;
    return $self->{i_sum_to_str} if ($self->{i_sum_to_str});
    $self->{i_sum_to_str} = sprintf('%d', ($self->i_42() + $self->i_m13()));
    return $self->{i_sum_to_str};
}

sub bool_or {
    my ($self) = @_;
    return $self->{bool_or} if ($self->{bool_or});
    $self->{bool_or} =  ((!(0)) || (0)) ;
    return $self->{bool_or};
}

sub f_2pi {
    my ($self) = @_;
    return $self->{f_2pi} if ($self->{f_2pi});
    $self->{f_2pi} = 6.28;
    return $self->{f_2pi};
}

sub f_sum_to_int {
    my ($self) = @_;
    return $self->{f_sum_to_int} if ($self->{f_sum_to_int});
    $self->{f_sum_to_int} = int(($self->f_2pi() + $self->f_e()));
    return $self->{f_sum_to_int};
}

sub f_e {
    my ($self) = @_;
    return $self->{f_e} if ($self->{f_e});
    $self->{f_e} = 2.72;
    return $self->{f_e};
}

sub i_42 {
    my ($self) = @_;
    return $self->{i_42} if ($self->{i_42});
    $self->{i_42} = 42;
    return $self->{i_42};
}

sub str_concat_to_i {
    my ($self) = @_;
    return $self->{str_concat_to_i} if ($self->{str_concat_to_i});
    $self->{str_concat_to_i} = $self->str_0_to_4() . $self->str_5_to_9() + 0;
    return $self->{str_concat_to_i};
}

1;
