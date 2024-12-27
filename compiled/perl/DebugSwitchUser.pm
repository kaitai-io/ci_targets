# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package DebugSwitchUser;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == 1) {
        $self->{data} = DebugSwitchUser::One->new($self->{_io}, $self, $self->{_root});
        $self->{data}->_read();
    }
    elsif ($_on == 2) {
        $self->{data} = DebugSwitchUser::Two->new($self->{_io}, $self, $self->{_root});
        $self->{data}->_read();
    }
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub data {
    my ($self) = @_;
    return $self->{data};
}

########################################################################
package DebugSwitchUser::One;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{val} = $self->{_io}->read_s2le();
}

sub val {
    my ($self) = @_;
    return $self->{val};
}

########################################################################
package DebugSwitchUser::Two;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{val} = $self->{_io}->read_u2le();
}

sub val {
    my ($self) = @_;
    return $self->{val};
}

1;
