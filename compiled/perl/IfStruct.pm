# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package IfStruct;

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

    $self->{op1} = IfStruct::Operation->new($self->{_io}, $self, $self->{_root});
    $self->{op2} = IfStruct::Operation->new($self->{_io}, $self, $self->{_root});
    $self->{op3} = IfStruct::Operation->new($self->{_io}, $self, $self->{_root});
}

sub op1 {
    my ($self) = @_;
    return $self->{op1};
}

sub op2 {
    my ($self) = @_;
    return $self->{op2};
}

sub op3 {
    my ($self) = @_;
    return $self->{op3};
}

########################################################################
package IfStruct::Operation;

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

    $self->{opcode} = $self->{_io}->read_u1();
    if ($self->opcode() == 84) {
        $self->{arg_tuple} = IfStruct::ArgTuple->new($self->{_io}, $self, $self->{_root});
    }
    if ($self->opcode() == 83) {
        $self->{arg_str} = IfStruct::ArgStr->new($self->{_io}, $self, $self->{_root});
    }
}

sub opcode {
    my ($self) = @_;
    return $self->{opcode};
}

sub arg_tuple {
    my ($self) = @_;
    return $self->{arg_tuple};
}

sub arg_str {
    my ($self) = @_;
    return $self->{arg_str};
}

########################################################################
package IfStruct::ArgTuple;

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

    $self->{num1} = $self->{_io}->read_u1();
    $self->{num2} = $self->{_io}->read_u1();
}

sub num1 {
    my ($self) = @_;
    return $self->{num1};
}

sub num2 {
    my ($self) = @_;
    return $self->{num2};
}

########################################################################
package IfStruct::ArgStr;

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

    $self->{len} = $self->{_io}->read_u1();
    $self->{str} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len()));
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

1;
