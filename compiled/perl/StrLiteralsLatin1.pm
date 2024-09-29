# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package StrLiteralsLatin1;

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

    $self->{len_parsed} = $self->{_io}->read_u2le();
    $self->{parsed} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len_parsed()));
}

sub parsed_eq_literal {
    my ($self) = @_;
    return $self->{parsed_eq_literal} if ($self->{parsed_eq_literal});
    $self->{parsed_eq_literal} = $self->parsed() eq "\243";
    return $self->{parsed_eq_literal};
}

sub len_parsed {
    my ($self) = @_;
    return $self->{len_parsed};
}

sub parsed {
    my ($self) = @_;
    return $self->{parsed};
}

1;
