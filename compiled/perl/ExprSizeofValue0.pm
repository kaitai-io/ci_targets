# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprSizeofValue0;

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

    $self->{block1} = ExprSizeofValue0::Block->new($self->{_io}, $self, $self->{_root});
    $self->{more} = $self->{_io}->read_u2le();
}

sub self_sizeof {
    my ($self) = @_;
    return $self->{self_sizeof} if ($self->{self_sizeof});
    $self->{self_sizeof} = 9;
    return $self->{self_sizeof};
}

sub sizeof_block {
    my ($self) = @_;
    return $self->{sizeof_block} if ($self->{sizeof_block});
    $self->{sizeof_block} = 7;
    return $self->{sizeof_block};
}

sub sizeof_block_b {
    my ($self) = @_;
    return $self->{sizeof_block_b} if ($self->{sizeof_block_b});
    $self->{sizeof_block_b} = 4;
    return $self->{sizeof_block_b};
}

sub sizeof_block_a {
    my ($self) = @_;
    return $self->{sizeof_block_a} if ($self->{sizeof_block_a});
    $self->{sizeof_block_a} = 1;
    return $self->{sizeof_block_a};
}

sub sizeof_block_c {
    my ($self) = @_;
    return $self->{sizeof_block_c} if ($self->{sizeof_block_c});
    $self->{sizeof_block_c} = 2;
    return $self->{sizeof_block_c};
}

sub block1 {
    my ($self) = @_;
    return $self->{block1};
}

sub more {
    my ($self) = @_;
    return $self->{more};
}

########################################################################
package ExprSizeofValue0::Block;

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

    $self->{a} = $self->{_io}->read_u1();
    $self->{b} = $self->{_io}->read_u4le();
    $self->{c} = $self->{_io}->read_bytes(2);
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

sub b {
    my ($self) = @_;
    return $self->{b};
}

sub c {
    my ($self) = @_;
    return $self->{c};
}

1;
