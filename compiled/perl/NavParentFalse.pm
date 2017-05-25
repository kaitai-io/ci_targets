# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package NavParentFalse;

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
    $self->{element_a} = NavParentFalse::ParentA->new($self->{_io}, $self, $self->{_root});
    $self->{element_b} = NavParentFalse::ParentB->new($self->{_io}, $self, $self->{_root});
}

sub child_size {
    my ($self) = @_;
    return $self->{child_size};
}

sub element_a {
    my ($self) = @_;
    return $self->{element_a};
}

sub element_b {
    my ($self) = @_;
    return $self->{element_b};
}

########################################################################
package NavParentFalse::ParentA;

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

    $self->{foo} = NavParentFalse::Child->new($self->{_io}, $self, $self->{_root});
    $self->{bar} = NavParentFalse::ParentB->new($self->{_io}, $self, $self->{_root});
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

sub bar {
    my ($self) = @_;
    return $self->{bar};
}

########################################################################
package NavParentFalse::ParentB;

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

    $self->{foo} = NavParentFalse::Child->new($self->{_io}, 0, $self->{_root});
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

########################################################################
package NavParentFalse::Child;

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
    if ($self->code() == 73) {
        $self->{more} = $self->{_io}->read_bytes($self->_parent()->_parent()->child_size());
    }
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub more {
    my ($self) = @_;
    return $self->{more};
}

1;
