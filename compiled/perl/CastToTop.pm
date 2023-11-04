# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package CastToTop;

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

    $self->{code} = $self->{_io}->read_u1();
}

sub header {
    my ($self) = @_;
    return $self->{header} if ($self->{header});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(1);
    $self->{header} = CastToTop->new($self->{_io});
    $self->{_io}->seek($_pos);
    return $self->{header};
}

sub header_casted {
    my ($self) = @_;
    return $self->{header_casted} if ($self->{header_casted});
    $self->{header_casted} = $self->header();
    return $self->{header_casted};
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

1;
