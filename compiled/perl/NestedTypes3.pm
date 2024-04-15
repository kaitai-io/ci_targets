# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NestedTypes3;

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

    $self->{a_cc} = NestedTypes3::SubtypeA::SubtypeCc->new($self->{_io}, $self, $self->{_root});
    $self->{a_c_d} = NestedTypes3::SubtypeA::SubtypeC::SubtypeD->new($self->{_io}, $self, $self->{_root});
    $self->{b} = NestedTypes3::SubtypeB->new($self->{_io}, $self, $self->{_root});
}

sub a_cc {
    my ($self) = @_;
    return $self->{a_cc};
}

sub a_c_d {
    my ($self) = @_;
    return $self->{a_c_d};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

########################################################################
package NestedTypes3::SubtypeA;

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

########################################################################
package NestedTypes3::SubtypeA::SubtypeC;

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

########################################################################
package NestedTypes3::SubtypeA::SubtypeC::SubtypeD;

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
package NestedTypes3::SubtypeA::SubtypeCc;

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
package NestedTypes3::SubtypeB;

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
    $self->{a_cc} = NestedTypes3::SubtypeA::SubtypeCc->new($self->{_io}, $self, $self->{_root});
    $self->{a_c_d} = NestedTypes3::SubtypeA::SubtypeC::SubtypeD->new($self->{_io}, $self, $self->{_root});
}

sub value_b {
    my ($self) = @_;
    return $self->{value_b};
}

sub a_cc {
    my ($self) = @_;
    return $self->{a_cc};
}

sub a_c_d {
    my ($self) = @_;
    return $self->{a_c_d};
}

1;
