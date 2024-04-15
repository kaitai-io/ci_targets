# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package InstanceIoUser;

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

    $self->{qty_entries} = $self->{_io}->read_u4le();
    $self->{entries} = [];
    my $n_entries = $self->qty_entries();
    for (my $i = 0; $i < $n_entries; $i++) {
        push @{$self->{entries}}, InstanceIoUser::Entry->new($self->{_io}, $self, $self->{_root});
    }
    $self->{_raw_strings} = $self->{_io}->read_bytes_full();
    my $io__raw_strings = IO::KaitaiStruct::Stream->new($self->{_raw_strings});
    $self->{strings} = InstanceIoUser::StringsObj->new($io__raw_strings, $self, $self->{_root});
}

sub qty_entries {
    my ($self) = @_;
    return $self->{qty_entries};
}

sub entries {
    my ($self) = @_;
    return $self->{entries};
}

sub strings {
    my ($self) = @_;
    return $self->{strings};
}

sub _raw_strings {
    my ($self) = @_;
    return $self->{_raw_strings};
}

########################################################################
package InstanceIoUser::Entry;

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

    $self->{name_ofs} = $self->{_io}->read_u4le();
    $self->{value} = $self->{_io}->read_u4le();
}

sub name {
    my ($self) = @_;
    return $self->{name} if ($self->{name});
    my $io = $self->_root()->strings()->_io();
    my $_pos = $io->pos();
    $io->seek($self->name_ofs());
    $self->{name} = Encode::decode("UTF-8", $io->read_bytes_term(0, 0, 1, 1));
    $io->seek($_pos);
    return $self->{name};
}

sub name_ofs {
    my ($self) = @_;
    return $self->{name_ofs};
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package InstanceIoUser::StringsObj;

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

    $self->{str} = [];
    while (!$self->{_io}->is_eof()) {
        push @{$self->{str}}, Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    }
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

1;
