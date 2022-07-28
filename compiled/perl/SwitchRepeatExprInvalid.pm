# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package SwitchRepeatExprInvalid;

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

    $self->{code} = $self->{_io}->read_u1();
    $self->{size} = $self->{_io}->read_u4le();
    $self->{_raw_body} = ();
    $self->{body} = ();
    my $n_body = 1;
    for (my $i = 0; $i < $n_body; $i++) {
        my $_on = $self->code();
        if ($_on == 255) {
            $self->{_raw_body} = $self->{_io}->read_bytes($self->size());
            my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body});
            push @{$self->{body}}, SwitchRepeatExprInvalid::One->new($io__raw_body, $self, $self->{_root});
        }
        elsif ($_on == 34) {
            $self->{_raw_body} = $self->{_io}->read_bytes($self->size());
            my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body});
            push @{$self->{body}}, SwitchRepeatExprInvalid::Two->new($io__raw_body, $self, $self->{_root});
        }
        else {
            push @{$self->{body}}, $self->{_io}->read_bytes($self->size());
        }
    }
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub size {
    my ($self) = @_;
    return $self->{size};
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
package SwitchRepeatExprInvalid::One;

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

    $self->{first} = $self->{_io}->read_bytes_full();
}

sub first {
    my ($self) = @_;
    return $self->{first};
}

########################################################################
package SwitchRepeatExprInvalid::Two;

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

    $self->{second} = $self->{_io}->read_bytes_full();
}

sub second {
    my ($self) = @_;
    return $self->{second};
}

1;
