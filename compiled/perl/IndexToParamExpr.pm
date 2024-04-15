# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package IndexToParamExpr;

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

    $self->{qty} = $self->{_io}->read_u4le();
    $self->{sizes} = [];
    my $n_sizes = $self->qty();
    for (my $i = 0; $i < $n_sizes; $i++) {
        push @{$self->{sizes}}, $self->{_io}->read_u4le();
    }
    $self->{blocks} = [];
    my $n_blocks = $self->qty();
    for (my $i = 0; $i < $n_blocks; $i++) {
        push @{$self->{blocks}}, IndexToParamExpr::Block->new($self->{_io}, $self, $self->{_root});
    }
}

sub qty {
    my ($self) = @_;
    return $self->{qty};
}

sub sizes {
    my ($self) = @_;
    return $self->{sizes};
}

sub blocks {
    my ($self) = @_;
    return $self->{blocks};
}

########################################################################
package IndexToParamExpr::Block;

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

    $self->{buf} = Encode::decode("ASCII", $self->{_io}->read_bytes(@{$self->_root()->sizes()}[$self->idx()]));
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub idx {
    my ($self) = @_;
    return $self->{idx};
}

1;
