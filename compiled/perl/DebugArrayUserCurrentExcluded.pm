# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package DebugArrayUserCurrentExcluded;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{array_of_cats} = [];
    my $n_array_of_cats = 3;
    for (my $i = 0; $i < $n_array_of_cats; $i++) {
        my $_t_array_of_cats = DebugArrayUserCurrentExcluded::Cat->new($self->{_io}, $self, $self->{_root});
        eval {
            $_t_array_of_cats->_read();
            1;
        } or do {
            $failed = 1;
            $err = $@;
        };
        push @{$self->{array_of_cats}}, $_t_array_of_cats;
        if ($failed) {
            die $err;
        }
    }
}

sub array_of_cats {
    my ($self) = @_;
    return $self->{array_of_cats};
}

########################################################################
package DebugArrayUserCurrentExcluded::Cat;

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


    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{meow} = $self->{_io}->read_bytes(3 - scalar(@{$self->_parent()->array_of_cats()}));
}

sub meow {
    my ($self) = @_;
    return $self->{meow};
}

1;
