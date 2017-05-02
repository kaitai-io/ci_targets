# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package DefaultEndianMod;

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

    $self->{main} = DefaultEndianMod::MainObj->new($self->{_io}, $self, $self->{_root});

    return $self;
}

sub main {
    my ($self) = @_;
    return $self->{main};
}

########################################################################
package DefaultEndianMod::MainObj;

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

    $self->{one} = $self->{_io}->read_s4le();
    $self->{nest} = DefaultEndianMod::MainObj::Subnest->new($self->{_io}, $self, $self->{_root});
    $self->{nest_be} = DefaultEndianMod::MainObj::SubnestBe->new($self->{_io}, $self, $self->{_root});

    return $self;
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub nest {
    my ($self) = @_;
    return $self->{nest};
}

sub nest_be {
    my ($self) = @_;
    return $self->{nest_be};
}

########################################################################
package DefaultEndianMod::MainObj::Subnest;

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

    $self->{two} = $self->{_io}->read_s4le();

    return $self;
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

########################################################################
package DefaultEndianMod::MainObj::SubnestBe;

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

    $self->{two} = $self->{_io}->read_s4be();

    return $self;
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
