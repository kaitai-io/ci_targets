# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NestedSameName2;

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

    $self->{version} = $self->{_io}->read_u4le();
    $self->{main_data} = NestedSameName2::Main->new($self->{_io}, $self, $self->{_root});
    $self->{dummy} = NestedSameName2::DummyObj->new($self->{_io}, $self, $self->{_root});
}

sub version {
    my ($self) = @_;
    return $self->{version};
}

sub main_data {
    my ($self) = @_;
    return $self->{main_data};
}

sub dummy {
    my ($self) = @_;
    return $self->{dummy};
}

########################################################################
package NestedSameName2::DummyObj;

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

    $self->{dummy_size} = $self->{_io}->read_s4le();
    $self->{foo} = NestedSameName2::DummyObj::FooObj->new($self->{_io}, $self, $self->{_root});
}

sub dummy_size {
    my ($self) = @_;
    return $self->{dummy_size};
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

########################################################################
package NestedSameName2::DummyObj::FooObj;

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

    $self->{data2} = $self->{_io}->read_bytes($self->_parent()->dummy_size() * 2);
}

sub data2 {
    my ($self) = @_;
    return $self->{data2};
}

########################################################################
package NestedSameName2::Main;

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

    $self->{main_size} = $self->{_io}->read_s4le();
    $self->{foo} = NestedSameName2::Main::FooObj->new($self->{_io}, $self, $self->{_root});
}

sub main_size {
    my ($self) = @_;
    return $self->{main_size};
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

########################################################################
package NestedSameName2::Main::FooObj;

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

    $self->{data1} = $self->{_io}->read_bytes($self->_parent()->main_size() * 2);
}

sub data1 {
    my ($self) = @_;
    return $self->{data1};
}

1;
