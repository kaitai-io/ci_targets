# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ProcessCoerceUsertype2;

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

    $self->{records} = [];
    my $n_records = 2;
    for (my $i = 0; $i < $n_records; $i++) {
        push @{$self->{records}}, ProcessCoerceUsertype2::Record->new($self->{_io}, $self, $self->{_root});
    }
}

sub records {
    my ($self) = @_;
    return $self->{records};
}

########################################################################
package ProcessCoerceUsertype2::Record;

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

    $self->{flag} = $self->{_io}->read_u1();
    if ($self->flag() == 0) {
        $self->{buf_unproc} = ProcessCoerceUsertype2::Foo->new($self->{_io}, $self, $self->{_root});
    }
    if ($self->flag() != 0) {
        $self->{_raw__raw_buf_proc} = $self->{_io}->read_bytes(4);
        $self->{_raw_buf_proc} = IO::KaitaiStruct::Stream::process_xor_one($self->{_raw__raw_buf_proc}, 170);
        my $io__raw_buf_proc = IO::KaitaiStruct::Stream->new($self->{_raw_buf_proc});
        $self->{buf_proc} = ProcessCoerceUsertype2::Foo->new($io__raw_buf_proc, $self, $self->{_root});
    }
}

sub buf {
    my ($self) = @_;
    return $self->{buf} if ($self->{buf});
    $self->{buf} = ($self->flag() == 0 ? $self->buf_unproc() : $self->buf_proc());
    return $self->{buf};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub buf_unproc {
    my ($self) = @_;
    return $self->{buf_unproc};
}

sub buf_proc {
    my ($self) = @_;
    return $self->{buf_proc};
}

sub _raw_buf_proc {
    my ($self) = @_;
    return $self->{_raw_buf_proc};
}

sub _raw__raw_buf_proc {
    my ($self) = @_;
    return $self->{_raw__raw_buf_proc};
}

########################################################################
package ProcessCoerceUsertype2::Foo;

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

    $self->{value} = $self->{_io}->read_u4le();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
