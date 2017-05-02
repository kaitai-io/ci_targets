# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package SwitchIntegers;

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

    $self->{opcodes} = ();
    while (!$self->{_io}->is_eof()) {
        push @{$self->{opcodes}}, SwitchIntegers::Opcode->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub opcodes {
    my ($self) = @_;
    return $self->{opcodes};
}

########################################################################
package SwitchIntegers::Opcode;

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

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == 1) {
        $self->{body} = $self->{_io}->read_u1();
    }
    elsif ($_on == 2) {
        $self->{body} = $self->{_io}->read_u2le();
    }
    elsif ($_on == 4) {
        $self->{body} = $self->{_io}->read_u4le();
    }
    elsif ($_on == 8) {
        $self->{body} = $self->{_io}->read_u8le();
    }

    return $self;
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

1;
