# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package RepeatUntilSized;

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

    $self->{_raw_records} = ();
    $self->{records} = ();
    do {
        my $_buf = $self->{_io}->read_bytes(5);
        push @{$self->{_raw_records}}, $_buf;
        my $io__raw_records = IO::KaitaiStruct::Stream->new($_buf);
        $_ = RepeatUntilSized::Record->new($io__raw_records, $self, $self->{_root});
        push @{$self->{records}}, $_;
    } until ($_->marker() == 170);
}

sub records {
    my ($self) = @_;
    return $self->{records};
}

sub _raw_records {
    my ($self) = @_;
    return $self->{_raw_records};
}

########################################################################
package RepeatUntilSized::Record;

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

    $self->{marker} = $self->{_io}->read_u1();
    $self->{body} = $self->{_io}->read_u4le();
}

sub marker {
    my ($self) = @_;
    return $self->{marker};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

1;
