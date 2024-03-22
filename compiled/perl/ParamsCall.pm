# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package ParamsCall;

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

    $self->{buf1} = ParamsCall::MyStr1->new($self->{_io}, $self, $self->{_root});
    $self->{buf2} = ParamsCall::MyStr2->new($self->{_io}, $self, $self->{_root});
}

sub buf1 {
    my ($self) = @_;
    return $self->{buf1};
}

sub buf2 {
    my ($self) = @_;
    return $self->{buf2};
}

########################################################################
package ParamsCall::MyStr1;

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

    $self->{body} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len()));
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

########################################################################
package ParamsCall::MyStr2;

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

    $self->{body} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len()));
    if ($self->has_trailer()) {
        $self->{trailer} = $self->{_io}->read_u1();
    }
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

sub trailer {
    my ($self) = @_;
    return $self->{trailer};
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

sub has_trailer {
    my ($self) = @_;
    return $self->{has_trailer};
}

1;
