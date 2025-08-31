# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ProcessRepeatUsertypeDynargXor;

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

    $self->{_raw_blocks} = [];
    $self->{_raw__raw_blocks} = [];
    $self->{blocks} = [];
    my $n_blocks = 2;
    for (my $i = 0; $i < $n_blocks; $i++) {
        push @{$self->{_raw__raw_blocks}}, $self->{_io}->read_bytes(5);
        push @{$self->{_raw_blocks}}, IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_blocks}[$i], 155 ^ ($i << 4 | $self->_io()->pos()));
        my $io__raw_blocks = IO::KaitaiStruct::Stream->new($self->{_raw_blocks}[$i]);
        push @{$self->{blocks}}, ProcessRepeatUsertypeDynargXor::Block->new($io__raw_blocks, $self, $self->{_root});
    }
    $self->{blocks_b} = ProcessRepeatUsertypeDynargXor::BlocksBWrapper->new($self->{_io}, $self, $self->{_root});
}

sub blocks {
    my ($self) = @_;
    return $self->{blocks};
}

sub blocks_b {
    my ($self) = @_;
    return $self->{blocks_b};
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
package ProcessRepeatUsertypeDynargXor::Block;

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

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{a} = $self->{_io}->read_u4le();
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

########################################################################
package ProcessRepeatUsertypeDynargXor::BlocksBWrapper;

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

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{dummy} = $self->{_io}->read_u1();
}

sub blocks_0_b {
    my ($self) = @_;
    return $self->{blocks_0_b} if ($self->{blocks_0_b});
    my $io = @{$self->_parent()->blocks()}[0]->_io();
    my $_pos = $io->pos();
    $io->seek(4);
    $self->{blocks_0_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_0_b};
}

sub blocks_1_b {
    my ($self) = @_;
    return $self->{blocks_1_b} if ($self->{blocks_1_b});
    my $io = @{$self->_parent()->blocks()}[1]->_io();
    my $_pos = $io->pos();
    $io->seek(4);
    $self->{blocks_1_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_1_b};
}

sub dummy {
    my ($self) = @_;
    return $self->{dummy};
}

1;
