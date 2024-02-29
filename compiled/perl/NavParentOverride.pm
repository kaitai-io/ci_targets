# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NavParentOverride;

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

    $self->{child_size} = $self->{_io}->read_u1();
    $self->{child_1} = NavParentOverride::Child->new($self->{_io}, $self, $self->{_root});
    $self->{mediator_2} = NavParentOverride::Mediator->new($self->{_io}, $self, $self->{_root});
}

sub child_size {
    my ($self) = @_;
    return $self->{child_size};
}

sub child_1 {
    my ($self) = @_;
    return $self->{child_1};
}

sub mediator_2 {
    my ($self) = @_;
    return $self->{mediator_2};
}

########################################################################
package NavParentOverride::Child;

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

    $self->{data} = $self->{_io}->read_bytes($self->_parent()->child_size());
}

sub data {
    my ($self) = @_;
    return $self->{data};
}

########################################################################
package NavParentOverride::Mediator;

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

    $self->{child_2} = NavParentOverride::Child->new($self->{_io}, $self->_parent(), $self->{_root});
}

sub child_2 {
    my ($self) = @_;
    return $self->{child_2};
}

1;
