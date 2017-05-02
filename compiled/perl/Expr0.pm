# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package Expr0;

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

    $self->{len_of_1} = $self->{_io}->read_u2le();

    return $self;
}

sub must_be_f7 {
    my ($self) = @_;
    return $self->{must_be_f7} if ($self->{must_be_f7});
    $self->{must_be_f7} = (7 + 240);
    return $self->{must_be_f7};
}

sub must_be_abc123 {
    my ($self) = @_;
    return $self->{must_be_abc123} if ($self->{must_be_abc123});
    $self->{must_be_abc123} = "abc" . "123";
    return $self->{must_be_abc123};
}

sub len_of_1 {
    my ($self) = @_;
    return $self->{len_of_1};
}

1;
