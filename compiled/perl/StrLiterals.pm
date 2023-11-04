# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package StrLiterals;

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

sub octal_eatup2 {
    my ($self) = @_;
    return $self->{octal_eatup2} if ($self->{octal_eatup2});
    $self->{octal_eatup2} = "\0022";
    return $self->{octal_eatup2};
}

sub backslashes {
    my ($self) = @_;
    return $self->{backslashes} if ($self->{backslashes});
    $self->{backslashes} = "\\\\\\";
    return $self->{backslashes};
}

sub octal_eatup {
    my ($self) = @_;
    return $self->{octal_eatup} if ($self->{octal_eatup});
    $self->{octal_eatup} = "\00022";
    return $self->{octal_eatup};
}

sub double_quotes {
    my ($self) = @_;
    return $self->{double_quotes} if ($self->{double_quotes});
    $self->{double_quotes} = "\"\"\"";
    return $self->{double_quotes};
}

sub complex_str {
    my ($self) = @_;
    return $self->{complex_str} if ($self->{complex_str});
    $self->{complex_str} = "\000\001\002\a\b\n\r\t\013\f\e=\a\n\$\N{U+263b}";
    return $self->{complex_str};
}

1;
