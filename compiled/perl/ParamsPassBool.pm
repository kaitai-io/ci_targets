# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ParamsPassBool;

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

    $self->{s_false} = $self->{_io}->read_bits_int_be(1);
    $self->{s_true} = $self->{_io}->read_bits_int_be(1);
    $self->{_io}->align_to_byte();
    $self->{seq_b1} = ParamsPassBool::ParamTypeB1->new($self->{_io}, $self, $self->{_root});
    $self->{seq_bool} = ParamsPassBool::ParamTypeBool->new($self->{_io}, $self, $self->{_root});
    $self->{literal_b1} = ParamsPassBool::ParamTypeB1->new($self->{_io}, $self, $self->{_root});
    $self->{literal_bool} = ParamsPassBool::ParamTypeBool->new($self->{_io}, $self, $self->{_root});
    $self->{inst_b1} = ParamsPassBool::ParamTypeB1->new($self->{_io}, $self, $self->{_root});
    $self->{inst_bool} = ParamsPassBool::ParamTypeBool->new($self->{_io}, $self, $self->{_root});
}

sub v_false {
    my ($self) = @_;
    return $self->{v_false} if ($self->{v_false});
    $self->{v_false} = 0;
    return $self->{v_false};
}

sub v_true {
    my ($self) = @_;
    return $self->{v_true} if ($self->{v_true});
    $self->{v_true} = 1;
    return $self->{v_true};
}

sub s_false {
    my ($self) = @_;
    return $self->{s_false};
}

sub s_true {
    my ($self) = @_;
    return $self->{s_true};
}

sub seq_b1 {
    my ($self) = @_;
    return $self->{seq_b1};
}

sub seq_bool {
    my ($self) = @_;
    return $self->{seq_bool};
}

sub literal_b1 {
    my ($self) = @_;
    return $self->{literal_b1};
}

sub literal_bool {
    my ($self) = @_;
    return $self->{literal_bool};
}

sub inst_b1 {
    my ($self) = @_;
    return $self->{inst_b1};
}

sub inst_bool {
    my ($self) = @_;
    return $self->{inst_bool};
}

########################################################################
package ParamsPassBool::ParamTypeB1;

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

    $self->{foo} = $self->{_io}->read_bytes(($self->arg() ? 1 : 2));
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

sub arg {
    my ($self) = @_;
    return $self->{arg};
}

########################################################################
package ParamsPassBool::ParamTypeBool;

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

    $self->{foo} = $self->{_io}->read_bytes(($self->arg() ? 1 : 2));
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

sub arg {
    my ($self) = @_;
    return $self->{arg};
}

1;
