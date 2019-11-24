# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ProcessRepeatUsertype;

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

    $self->{_raw_blocks} = ();
    $self->{blocks} = ();
    my $n_blocks = 2;
    for (my $i = 0; $i < $n_blocks; $i++) {
        $self->{_raw__raw_blocks}[$i] = $self->{_io}->read_bytes(5);
        $self->{_raw_blocks} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_blocks}, 158);
        my $io__raw_blocks = IO::KaitaiStruct::Stream->new($self->{_raw_blocks}[$i]);
        $self->{blocks}[$i] = ProcessRepeatUsertype::Block->new($io__raw_blocks, $self, $self->{_root});
    }
}

sub blocks {
    my ($self) = @_;
    return $self->{blocks};
}

sub _raw_blocks {
    my ($self) = @_;
    return $self->{_raw_blocks};
}

sub _raw__raw_blocks {
    my ($self) = @_;
    return $self->{_raw__raw_blocks};
}

########################################################################
package ProcessRepeatUsertype::Block;

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

    $self->{a} = $self->{_io}->read_s4le();
    $self->{b} = $self->{_io}->read_s1();
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

1;
