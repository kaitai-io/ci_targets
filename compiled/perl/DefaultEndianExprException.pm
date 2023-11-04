# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package DefaultEndianExprException;

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

    $self->{docs} = [];
    while (!$self->{_io}->is_eof()) {
        push @{$self->{docs}}, DefaultEndianExprException::Doc->new($self->{_io}, $self, $self->{_root});
    }
}

sub docs {
    my ($self) = @_;
    return $self->{docs};
}

########################################################################
package DefaultEndianExprException::Doc;

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

    $self->{indicator} = $self->{_io}->read_bytes(2);
    $self->{main} = DefaultEndianExprException::Doc::MainObj->new($self->{_io}, $self, $self->{_root});
}

sub indicator {
    my ($self) = @_;
    return $self->{indicator};
}

sub main {
    my ($self) = @_;
    return $self->{main};
}

########################################################################
package DefaultEndianExprException::Doc::MainObj;

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

    my $_on = $self->_parent()->indicator();
    if ($_on eq pack('C*', (73, 73))) {
        $self->{_is_le} = 1;
    }
    elsif ($_on eq pack('C*', (77, 77))) {
        $self->{_is_le} = 0;
    }
    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }
}

sub _read_le {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4le();
    $self->{some_int_be} = $self->{_io}->read_u2be();
    $self->{some_int_le} = $self->{_io}->read_u2le();
}

sub _read_be {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4be();
    $self->{some_int_be} = $self->{_io}->read_u2be();
    $self->{some_int_le} = $self->{_io}->read_u2le();
}

sub some_int {
    my ($self) = @_;
    return $self->{some_int};
}

sub some_int_be {
    my ($self) = @_;
    return $self->{some_int_be};
}

sub some_int_le {
    my ($self) = @_;
    return $self->{some_int_le};
}

1;
