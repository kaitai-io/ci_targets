# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package NavParentVsValueInst;

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

    $self->{s1} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(124, 0, 1, 1));
    $self->{child} = NavParentVsValueInst::ChildObj->new($self->{_io}, $self, $self->{_root});
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub child {
    my ($self) = @_;
    return $self->{child};
}

########################################################################
package NavParentVsValueInst::ChildObj;

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

}

sub do_something {
    my ($self) = @_;
    return $self->{do_something} if ($self->{do_something});
    $self->{do_something} = ($self->_parent()->s1() eq "foo" ? 1 : 0);
    return $self->{do_something};
}

1;
