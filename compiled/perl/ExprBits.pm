# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprBits;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $ITEMS_FOO = 1;
our $ITEMS_BAR = 2;

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

    $self->{enum_seq} = $self->{_io}->read_bits_int_be(2);
    $self->{a} = $self->{_io}->read_bits_int_be(3);
    $self->{byte_size} = $self->{_io}->read_bytes($self->a());
    $self->{repeat_expr} = [];
    my $n_repeat_expr = $self->a();
    for (my $i = 0; $i < $n_repeat_expr; $i++) {
        push @{$self->{repeat_expr}}, $self->{_io}->read_s1();
    }
    my $_on = $self->a();
    if ($_on == 2) {
        $self->{switch_on_type} = $self->{_io}->read_s1();
    }
    $self->{switch_on_endian} = ExprBits::EndianSwitch->new($self->{_io}, $self, $self->{_root});
}

sub enum_inst {
    my ($self) = @_;
    return $self->{enum_inst} if ($self->{enum_inst});
    $self->{enum_inst} = $self->a();
    return $self->{enum_inst};
}

sub inst_pos {
    my ($self) = @_;
    return $self->{inst_pos} if ($self->{inst_pos});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->a());
    $self->{inst_pos} = $self->{_io}->read_s1();
    $self->{_io}->seek($_pos);
    return $self->{inst_pos};
}

sub enum_seq {
    my ($self) = @_;
    return $self->{enum_seq};
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub byte_size {
    my ($self) = @_;
    return $self->{byte_size};
}

sub repeat_expr {
    my ($self) = @_;
    return $self->{repeat_expr};
}

sub switch_on_type {
    my ($self) = @_;
    return $self->{switch_on_type};
}

sub switch_on_endian {
    my ($self) = @_;
    return $self->{switch_on_endian};
}

########################################################################
package ExprBits::EndianSwitch;

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

    my $_on = $self->_parent()->a();
    if ($_on == 1) {
        $self->{_is_le} = 1;
    }
    elsif ($_on == 2) {
        $self->{_is_le} = 0;
    }
    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }
}

sub _read_le {
    my ($self) = @_;

    $self->{foo} = $self->{_io}->read_s2le();
}

sub _read_be {
    my ($self) = @_;

    $self->{foo} = $self->{_io}->read_s2be();
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

1;
