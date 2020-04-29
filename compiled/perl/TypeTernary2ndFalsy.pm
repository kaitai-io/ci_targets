# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package TypeTernary2ndFalsy;

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

    $self->{int_truthy} = $self->{_io}->read_u1();
    $self->{ut} = TypeTernary2ndFalsy::Foo->new($self->{_io}, $self, $self->{_root});
    if (0) {
        $self->{null_ut} = TypeTernary2ndFalsy::Foo->new($self->{_io}, $self, $self->{_root});
    }
    $self->{int_array} = ();
    my $n_int_array = 2;
    for (my $i = 0; $i < $n_int_array; $i++) {
        $self->{int_array}[$i] = $self->{_io}->read_u1();
    }
    $self->{int_array_empty} = ();
    my $n_int_array_empty = 0;
    for (my $i = 0; $i < $n_int_array_empty; $i++) {
        $self->{int_array_empty}[$i] = $self->{_io}->read_u1();
    }
}

sub v_float_zero {
    my ($self) = @_;
    return $self->{v_float_zero} if ($self->{v_float_zero});
    $self->{v_float_zero} = ($self->t() ? 0.0 : 3.14);
    return $self->{v_float_zero};
}

sub t {
    my ($self) = @_;
    return $self->{t} if ($self->{t});
    $self->{t} = 1;
    return $self->{t};
}

sub v_int_neg_zero {
    my ($self) = @_;
    return $self->{v_int_neg_zero} if ($self->{v_int_neg_zero});
    $self->{v_int_neg_zero} = ($self->t() ? -0 : -20);
    return $self->{v_int_neg_zero};
}

sub v_int_zero {
    my ($self) = @_;
    return $self->{v_int_zero} if ($self->{v_int_zero});
    $self->{v_int_zero} = ($self->t() ? 0 : 10);
    return $self->{v_int_zero};
}

sub null_ut_inst {
    my ($self) = @_;
    return $self->{null_ut_inst} if ($self->{null_ut_inst});
    if (0) {
        $self->{null_ut_inst} = $self->ut();
    }
    return $self->{null_ut_inst};
}

sub v_null_ut_inst {
    my ($self) = @_;
    return $self->{v_null_ut_inst} if ($self->{v_null_ut_inst});
    $self->{v_null_ut_inst} = ($self->t() ? $self->null_ut_inst() : $self->ut());
    return $self->{v_null_ut_inst};
}

sub v_false {
    my ($self) = @_;
    return $self->{v_false} if ($self->{v_false});
    $self->{v_false} = ($self->t() ? 0 : 1);
    return $self->{v_false};
}

sub v_str_empty {
    my ($self) = @_;
    return $self->{v_str_empty} if ($self->{v_str_empty});
    $self->{v_str_empty} = ($self->t() ? "" : "kaitai");
    return $self->{v_str_empty};
}

sub v_int_array_empty {
    my ($self) = @_;
    return $self->{v_int_array_empty} if ($self->{v_int_array_empty});
    $self->{v_int_array_empty} = ($self->t() ? $self->int_array_empty() : $self->int_array());
    return $self->{v_int_array_empty};
}

sub v_null_ut {
    my ($self) = @_;
    return $self->{v_null_ut} if ($self->{v_null_ut});
    $self->{v_null_ut} = ($self->t() ? $self->null_ut() : $self->ut());
    return $self->{v_null_ut};
}

sub v_float_neg_zero {
    my ($self) = @_;
    return $self->{v_float_neg_zero} if ($self->{v_float_neg_zero});
    $self->{v_float_neg_zero} = ($self->t() ? -0.0 : -2.72);
    return $self->{v_float_neg_zero};
}

sub v_str_w_zero {
    my ($self) = @_;
    return $self->{v_str_w_zero} if ($self->{v_str_w_zero});
    $self->{v_str_w_zero} = ($self->t() ? "0" : "30");
    return $self->{v_str_w_zero};
}

sub int_truthy {
    my ($self) = @_;
    return $self->{int_truthy};
}

sub ut {
    my ($self) = @_;
    return $self->{ut};
}

sub null_ut {
    my ($self) = @_;
    return $self->{null_ut};
}

sub int_array {
    my ($self) = @_;
    return $self->{int_array};
}

sub int_array_empty {
    my ($self) = @_;
    return $self->{int_array_empty};
}

########################################################################
package TypeTernary2ndFalsy::Foo;

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

    $self->{m} = $self->{_io}->read_u1();
}

sub m {
    my ($self) = @_;
    return $self->{m};
}

1;
