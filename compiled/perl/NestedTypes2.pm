# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NestedTypes2;

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

    $self->{one} = NestedTypes2::SubtypeA->new($self->{_io}, $self, $self->{_root});
    $self->{two} = NestedTypes2::SubtypeB->new($self->{_io}, $self, $self->{_root});
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

########################################################################
package NestedTypes2::SubtypeA;

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

    $self->{typed_at_root} = NestedTypes2::SubtypeB->new($self->{_io}, $self, $self->{_root});
    $self->{typed_here1} = NestedTypes2::SubtypeA::SubtypeC->new($self->{_io}, $self, $self->{_root});
    $self->{typed_here2} = NestedTypes2::SubtypeA::SubtypeCc->new($self->{_io}, $self, $self->{_root});
}

sub typed_at_root {
    my ($self) = @_;
    return $self->{typed_at_root};
}

sub typed_here1 {
    my ($self) = @_;
    return $self->{typed_here1};
}

sub typed_here2 {
    my ($self) = @_;
    return $self->{typed_here2};
}

########################################################################
package NestedTypes2::SubtypeA::SubtypeC;

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

    $self->{value_c} = $self->{_io}->read_s1();
    $self->{typed_here} = NestedTypes2::SubtypeA::SubtypeC::SubtypeD->new($self->{_io}, $self, $self->{_root});
    $self->{typed_parent} = NestedTypes2::SubtypeA::SubtypeCc->new($self->{_io}, $self, $self->{_root});
    $self->{typed_root} = NestedTypes2::SubtypeB->new($self->{_io}, $self, $self->{_root});
}

sub value_c {
    my ($self) = @_;
    return $self->{value_c};
}

sub typed_here {
    my ($self) = @_;
    return $self->{typed_here};
}

sub typed_parent {
    my ($self) = @_;
    return $self->{typed_parent};
}

sub typed_root {
    my ($self) = @_;
    return $self->{typed_root};
}

########################################################################
package NestedTypes2::SubtypeA::SubtypeC::SubtypeD;

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

    $self->{value_d} = $self->{_io}->read_s1();
}

sub value_d {
    my ($self) = @_;
    return $self->{value_d};
}

########################################################################
package NestedTypes2::SubtypeA::SubtypeCc;

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

    $self->{value_cc} = $self->{_io}->read_s1();
}

sub value_cc {
    my ($self) = @_;
    return $self->{value_cc};
}

########################################################################
package NestedTypes2::SubtypeB;

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

    $self->{value_b} = $self->{_io}->read_s1();
}

sub value_b {
    my ($self) = @_;
    return $self->{value_b};
}

1;
