# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package SwitchManualEnumInvalid;

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
    $self->{_root} = $_root || $self;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{opcodes} = [];
    while (!$self->{_io}->is_eof()) {
        push @{$self->{opcodes}}, SwitchManualEnumInvalid::Opcode->new($self->{_io}, $self, $self->{_root});
    }
}

sub opcodes {
    my ($self) = @_;
    return $self->{opcodes};
}

########################################################################
package SwitchManualEnumInvalid::Opcode;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $CODE_ENUM_INTVAL = 73;
our $CODE_ENUM_STRVAL = 83;

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

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == $SwitchManualEnumInvalid::Opcode::CODE_ENUM_INTVAL) {
        $self->{body} = SwitchManualEnumInvalid::Opcode::Intval->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $SwitchManualEnumInvalid::Opcode::CODE_ENUM_STRVAL) {
        $self->{body} = SwitchManualEnumInvalid::Opcode::Strval->new($self->{_io}, $self, $self->{_root});
    }
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

########################################################################
package SwitchManualEnumInvalid::Opcode::Intval;

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

    $self->{value} = $self->{_io}->read_u1();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package SwitchManualEnumInvalid::Opcode::Strval;

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

    $self->{value} = Encode::decode("ASCII", $self->{_io}->read_bytes_term(0, 0, 1, 1));
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
