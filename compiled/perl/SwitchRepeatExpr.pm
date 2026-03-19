# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package SwitchRepeatExpr;

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

    $self->{codes} = [];
    my $n_codes = 3;
    for (my $i = 0; $i < $n_codes; $i++) {
        push @{$self->{codes}}, $self->{_io}->read_u1();
    }
    $self->{_raw_body} = [];
    $self->{body} = [];
    my $n_body = 3;
    for (my $i = 0; $i < $n_body; $i++) {
        my $_on = @{$self->codes()}[$i];
        if ($_on == 1) {
            push @{$self->{_raw_body}}, $self->{_io}->read_bytes(4);
            my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body}[$i]);
            push @{$self->{body}}, SwitchRepeatExpr::One->new($io__raw_body, $self, $self->{_root});
        }
        elsif ($_on == 2) {
            push @{$self->{_raw_body}}, $self->{_io}->read_bytes(4);
            my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body}[$i]);
            push @{$self->{body}}, SwitchRepeatExpr::One->new($io__raw_body, $self, $self->{_root});
        }
        elsif ($_on == 7) {
            push @{$self->{_raw_body}}, $self->{_io}->read_bytes(4);
            my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body}[$i]);
            push @{$self->{body}}, SwitchRepeatExpr::Two->new($io__raw_body, $self, $self->{_root});
        }
        else {
            push @{$self->{body}}, $self->{_io}->read_bytes(4);
        }
    }
}

sub codes {
    my ($self) = @_;
    return $self->{codes};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

sub _raw_body {
    my ($self) = @_;
    return $self->{_raw_body};
}

########################################################################
package SwitchRepeatExpr::One;

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

    $self->{first} = $self->{_io}->read_bytes_full();
}

sub first {
    my ($self) = @_;
    return $self->{first};
}

########################################################################
package SwitchRepeatExpr::Two;

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

    $self->{second} = $self->{_io}->read_bytes_full();
}

sub second {
    my ($self) = @_;
    return $self->{second};
}

1;
