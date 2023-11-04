# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NonStandard;

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

    $self->{foo} = $self->{_io}->read_u1();
    my $_on = $self->foo();
    if ($_on == 42) {
        $self->{bar} = $self->{_io}->read_u2le();
    }
    elsif ($_on == 43) {
        $self->{bar} = $self->{_io}->read_u4le();
    }
}

sub vi {
    my ($self) = @_;
    return $self->{vi} if ($self->{vi});
    $self->{vi} = $self->foo();
    return $self->{vi};
}

sub pi {
    my ($self) = @_;
    return $self->{pi} if ($self->{pi});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{pi} = $self->{_io}->read_u1();
    $self->{_io}->seek($_pos);
    return $self->{pi};
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

sub bar {
    my ($self) = @_;
    return $self->{bar};
}

1;
