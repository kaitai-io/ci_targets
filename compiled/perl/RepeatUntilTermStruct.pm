# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package RepeatUntilTermStruct;

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

    $self->{_raw_records1} = [];
    $self->{records1} = [];
    {
        my $_it;
        do {
            my $_buf = $self->{_io}->read_bytes_term(170, 0, 1, 1);
            push @{$self->{_raw_records1}}, $_buf;
            my $io__raw_records1 = IO::KaitaiStruct::Stream->new($_buf);
            $_it = RepeatUntilTermStruct::BytesWrapper->new($io__raw_records1, $self, $self->{_root});
            push @{$self->{records1}}, $_it;
        } until (length($_it->value()) == 0);
    }
    $self->{_raw_records2} = [];
    $self->{records2} = [];
    {
        my $_it;
        do {
            my $_buf = $self->{_io}->read_bytes_term(170, 1, 1, 1);
            push @{$self->{_raw_records2}}, $_buf;
            my $io__raw_records2 = IO::KaitaiStruct::Stream->new($_buf);
            $_it = RepeatUntilTermStruct::BytesWrapper->new($io__raw_records2, $self, $self->{_root});
            push @{$self->{records2}}, $_it;
        } until ($_it->value() ne pack('C*', (170)));
    }
    $self->{_raw_records3} = [];
    $self->{records3} = [];
    {
        my $_it;
        do {
            my $_buf = $self->{_io}->read_bytes_term(85, 0, 0, 1);
            push @{$self->{_raw_records3}}, $_buf;
            my $io__raw_records3 = IO::KaitaiStruct::Stream->new($_buf);
            $_it = RepeatUntilTermStruct::BytesWrapper->new($io__raw_records3, $self, $self->{_root});
            push @{$self->{records3}}, $_it;
        } until ($_it->value() eq @{$self->records1()}[-1]->value());
    }
}

sub records1 {
    my ($self) = @_;
    return $self->{records1};
}

sub records2 {
    my ($self) = @_;
    return $self->{records2};
}

sub records3 {
    my ($self) = @_;
    return $self->{records3};
}

sub _raw_records1 {
    my ($self) = @_;
    return $self->{_raw_records1};
}

sub _raw_records2 {
    my ($self) = @_;
    return $self->{_raw_records2};
}

sub _raw_records3 {
    my ($self) = @_;
    return $self->{_raw_records3};
}

########################################################################
package RepeatUntilTermStruct::BytesWrapper;

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

    $self->{value} = $self->{_io}->read_bytes_full();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
