# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package StrLiterals2;

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

}

sub dollar1 {
    my ($self) = @_;
    return $self->{dollar1} if ($self->{dollar1});
    $self->{dollar1} = "\$foo";
    return $self->{dollar1};
}

sub dollar2 {
    my ($self) = @_;
    return $self->{dollar2} if ($self->{dollar2});
    $self->{dollar2} = "\${foo}";
    return $self->{dollar2};
}

sub hash {
    my ($self) = @_;
    return $self->{hash} if ($self->{hash});
    $self->{hash} = "#{foo}";
    return $self->{hash};
}

sub at_sign {
    my ($self) = @_;
    return $self->{at_sign} if ($self->{at_sign});
    $self->{at_sign} = "\@foo";
    return $self->{at_sign};
}

1;
