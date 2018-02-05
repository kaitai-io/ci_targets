# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package RepeatUntilS4;

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

    $self->{entries} = ();
    do {
        $_ = $self->{_io}->read_s4le();
        push @{$self->{entries}}, $_;
    } until ($_ == -1);
    $self->{afterall} = Encode::decode("ASCII", $self->{_io}->read_bytes_term(0, 0, 1, 1));
}

sub entries {
    my ($self) = @_;
    return $self->{entries};
}

sub afterall {
    my ($self) = @_;
    return $self->{afterall};
}

1;
