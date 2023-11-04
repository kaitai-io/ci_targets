# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package IoLocalVar;

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

    $self->{skip} = $self->{_io}->read_bytes(20);
    if ($self->mess_up()->_io()->pos() < 0) {
        $self->{always_null} = $self->{_io}->read_u1();
    }
    $self->{followup} = $self->{_io}->read_u1();
}

sub mess_up {
    my ($self) = @_;
    return $self->{mess_up} if ($self->{mess_up});
    my $io = $self->_root()->_io();
    my $_pos = $io->pos();
    $io->seek(8);
    my $_on = 2;
    if ($_on == 1) {
        $self->{_raw_mess_up} = $io->read_bytes(2);
        my $io__raw_mess_up = IO::KaitaiStruct::Stream->new($self->{_raw_mess_up});
        $self->{mess_up} = IoLocalVar::Dummy->new($io__raw_mess_up, $self, $self->{_root});
    }
    elsif ($_on == 2) {
        $self->{_raw_mess_up} = $io->read_bytes(2);
        my $io__raw_mess_up = IO::KaitaiStruct::Stream->new($self->{_raw_mess_up});
        $self->{mess_up} = IoLocalVar::Dummy->new($io__raw_mess_up, $self, $self->{_root});
    }
    else {
        $self->{mess_up} = $io->read_bytes(2);
    }
    $io->seek($_pos);
    return $self->{mess_up};
}

sub skip {
    my ($self) = @_;
    return $self->{skip};
}

sub always_null {
    my ($self) = @_;
    return $self->{always_null};
}

sub followup {
    my ($self) = @_;
    return $self->{followup};
}

sub _raw_mess_up {
    my ($self) = @_;
    return $self->{_raw_mess_up};
}

########################################################################
package IoLocalVar::Dummy;

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

}

1;
