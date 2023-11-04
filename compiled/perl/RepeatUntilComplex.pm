# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package RepeatUntilComplex;

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

    $self->{first} = [];
    do {
        $_ = RepeatUntilComplex::TypeU1->new($self->{_io}, $self, $self->{_root});
        push @{$self->{first}}, $_;
    } until ($_->count() == 0);
    $self->{second} = [];
    do {
        $_ = RepeatUntilComplex::TypeU2->new($self->{_io}, $self, $self->{_root});
        push @{$self->{second}}, $_;
    } until ($_->count() == 0);
    $self->{third} = [];
    do {
        $_ = $self->{_io}->read_u1();
        push @{$self->{third}}, $_;
    } until ($_ == 0);
}

sub first {
    my ($self) = @_;
    return $self->{first};
}

sub second {
    my ($self) = @_;
    return $self->{second};
}

sub third {
    my ($self) = @_;
    return $self->{third};
}

########################################################################
package RepeatUntilComplex::TypeU1;

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

    $self->{count} = $self->{_io}->read_u1();
    $self->{values} = [];
    my $n_values = $self->count();
    for (my $i = 0; $i < $n_values; $i++) {
        push @{$self->{values}}, $self->{_io}->read_u1();
    }
}

sub count {
    my ($self) = @_;
    return $self->{count};
}

sub values {
    my ($self) = @_;
    return $self->{values};
}

########################################################################
package RepeatUntilComplex::TypeU2;

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

    $self->{count} = $self->{_io}->read_u2le();
    $self->{values} = [];
    my $n_values = $self->count();
    for (my $i = 0; $i < $n_values; $i++) {
        push @{$self->{values}}, $self->{_io}->read_u2le();
    }
}

sub count {
    my ($self) = @_;
    return $self->{count};
}

sub values {
    my ($self) = @_;
    return $self->{values};
}

1;
