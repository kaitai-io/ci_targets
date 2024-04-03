# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package EosExceptionSized;

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

    $self->{_raw_envelope} = $self->{_io}->read_bytes(6);
    my $io__raw_envelope = IO::KaitaiStruct::Stream->new($self->{_raw_envelope});
    $self->{envelope} = EosExceptionSized::Data->new($io__raw_envelope, $self, $self->{_root});
}

sub envelope {
    my ($self) = @_;
    return $self->{envelope};
}

sub _raw_envelope {
    my ($self) = @_;
    return $self->{_raw_envelope};
}

########################################################################
package EosExceptionSized::Data;

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

    $self->{_raw_buf} = $self->{_io}->read_bytes(7);
    my $io__raw_buf = IO::KaitaiStruct::Stream->new($self->{_raw_buf});
    $self->{buf} = EosExceptionSized::Foo->new($io__raw_buf, $self, $self->{_root});
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub _raw_buf {
    my ($self) = @_;
    return $self->{_raw_buf};
}

########################################################################
package EosExceptionSized::Foo;

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
