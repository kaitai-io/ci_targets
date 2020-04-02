# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package Test;

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

    $self->{seq_block} = Test->new($self->{_io});
}

sub seq_block {
    my ($self) = @_;
    return $self->{seq_block};
}

########################################################################
package Test::MyType;

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

    $self->{world} = $self->{_io}->read_s4be();
    $self->{repeated_thing} = ();
    my $n_repeated_thing = $self->repeat_count();
    for (my $i = 0; $i < $n_repeated_thing; $i++) {
        $self->{repeated_thing}[$i] = $self->{_io}->read_s4be();
    }
}

sub world {
    my ($self) = @_;
    return $self->{world};
}

sub repeated_thing {
    my ($self) = @_;
    return $self->{repeated_thing};
}

sub repeat_count {
    my ($self) = @_;
    return $self->{repeat_count};
}

1;
