# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package RepeatNStrzDouble;

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

    $self->{qty} = $self->{_io}->read_u4le();
    $self->{lines1} = [];
    my $n_lines1 = int($self->qty() / 2);
    for (my $i = 0; $i < $n_lines1; $i++) {
        push @{$self->{lines1}}, Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    }
    $self->{lines2} = [];
    my $n_lines2 = int($self->qty() / 2);
    for (my $i = 0; $i < $n_lines2; $i++) {
        push @{$self->{lines2}}, Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    }
}

sub qty {
    my ($self) = @_;
    return $self->{qty};
}

sub lines1 {
    my ($self) = @_;
    return $self->{lines1};
}

sub lines2 {
    my ($self) = @_;
    return $self->{lines2};
}

1;
