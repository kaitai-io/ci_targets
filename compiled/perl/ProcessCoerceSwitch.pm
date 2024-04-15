# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ProcessCoerceSwitch;

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

    $self->{buf_type} = $self->{_io}->read_u1();
    $self->{flag} = $self->{_io}->read_u1();
    if ($self->flag() == 0) {
        my $_on = $self->buf_type();
        if ($_on == 0) {
            $self->{_raw_buf_unproc} = $self->{_io}->read_bytes(4);
            my $io__raw_buf_unproc = IO::KaitaiStruct::Stream->new($self->{_raw_buf_unproc});
            $self->{buf_unproc} = ProcessCoerceSwitch::Foo->new($io__raw_buf_unproc, $self, $self->{_root});
        }
        else {
            $self->{buf_unproc} = $self->{_io}->read_bytes(4);
        }
    }
    if ($self->flag() != 0) {
        my $_on = $self->buf_type();
        if ($_on == 0) {
            $self->{_raw__raw_buf_proc} = $self->{_io}->read_bytes(4);
            $self->{_raw_buf_proc} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_buf_proc}, 170);
            my $io__raw_buf_proc = IO::KaitaiStruct::Stream->new($self->{_raw_buf_proc});
            $self->{buf_proc} = ProcessCoerceSwitch::Foo->new($io__raw_buf_proc, $self, $self->{_root});
        }
        else {
            $self->{_raw_buf_proc} = $self->{_io}->read_bytes(4);
            $self->{buf_proc} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw_buf_proc}, 170);
        }
    }
}

sub buf {
    my ($self) = @_;
    return $self->{buf} if ($self->{buf});
    $self->{buf} = ($self->flag() == 0 ? $self->buf_unproc() : $self->buf_proc());
    return $self->{buf};
}

sub buf_type {
    my ($self) = @_;
    return $self->{buf_type};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub buf_unproc {
    my ($self) = @_;
    return $self->{buf_unproc};
}

sub buf_proc {
    my ($self) = @_;
    return $self->{buf_proc};
}

sub _raw_buf_unproc {
    my ($self) = @_;
    return $self->{_raw_buf_unproc};
}

sub _raw_buf_proc {
    my ($self) = @_;
    return $self->{_raw_buf_proc};
}

sub _raw__raw_buf_proc {
    my ($self) = @_;
    return $self->{_raw__raw_buf_proc};
}

########################################################################
package ProcessCoerceSwitch::Foo;

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

    $self->{bar} = $self->{_io}->read_bytes(4);
}

sub bar {
    my ($self) = @_;
    return $self->{bar};
}

1;
