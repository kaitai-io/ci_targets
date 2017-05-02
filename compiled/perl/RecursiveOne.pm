# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package RecursiveOne;

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

    $self->{one} = $self->{_io}->read_u1();
    my $_on = ($self->one() & 3);
    if ($_on == 0) {
        $self->{next} = RecursiveOne->new($self->{_io});
    }
    elsif ($_on == 1) {
        $self->{next} = RecursiveOne->new($self->{_io});
    }
    elsif ($_on == 2) {
        $self->{next} = RecursiveOne->new($self->{_io});
    }
    elsif ($_on == 3) {
        $self->{next} = RecursiveOne::Fini->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

sub next {
    my ($self) = @_;
    return $self->{next};
}

########################################################################
package RecursiveOne::Fini;

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

    $self->{finisher} = $self->{_io}->read_u2le();

    return $self;
}

sub finisher {
    my ($self) = @_;
    return $self->{finisher};
}

1;
