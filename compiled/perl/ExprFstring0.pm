# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package ExprFstring0;

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

    $self->{seq_str} = Encode::decode("ASCII", $self->{_io}->read_bytes(5));
    $self->{seq_int} = $self->{_io}->read_u1();
}

sub empty {
    my ($self) = @_;
    return $self->{empty} if ($self->{empty});
    $self->{empty} = "";
    return $self->{empty};
}

sub head_and_int {
    my ($self) = @_;
    return $self->{head_and_int} if ($self->{head_and_int});
    $self->{head_and_int} = "abc=" . sprintf('%d', $self->seq_int());
    return $self->{head_and_int};
}

sub head_and_int_literal {
    my ($self) = @_;
    return $self->{head_and_int_literal} if ($self->{head_and_int_literal});
    $self->{head_and_int_literal} = "abc=" . sprintf('%d', 123);
    return $self->{head_and_int_literal};
}

sub head_and_str {
    my ($self) = @_;
    return $self->{head_and_str} if ($self->{head_and_str});
    $self->{head_and_str} = "abc=" . $self->seq_str();
    return $self->{head_and_str};
}

sub head_and_str_literal {
    my ($self) = @_;
    return $self->{head_and_str_literal} if ($self->{head_and_str_literal});
    $self->{head_and_str_literal} = "abc=" . "foo";
    return $self->{head_and_str_literal};
}

sub literal {
    my ($self) = @_;
    return $self->{literal} if ($self->{literal});
    $self->{literal} = "abc";
    return $self->{literal};
}

sub literal_with_escapes {
    my ($self) = @_;
    return $self->{literal_with_escapes} if ($self->{literal_with_escapes});
    $self->{literal_with_escapes} = "abc\n\tt";
    return $self->{literal_with_escapes};
}

sub seq_str {
    my ($self) = @_;
    return $self->{seq_str};
}

sub seq_int {
    my ($self) = @_;
    return $self->{seq_int};
}

1;
