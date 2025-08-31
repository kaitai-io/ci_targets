# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ProcessRepeatUsertypeDynargRotate;

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

    $self->{_raw_blocks_rol} = [];
    $self->{_raw__raw_blocks_rol} = [];
    $self->{blocks_rol} = [];
    my $n_blocks_rol = 2;
    for (my $i = 0; $i < $n_blocks_rol; $i++) {
        push @{$self->{_raw__raw_blocks_rol}}, $self->{_io}->read_bytes(3);
        push @{$self->{_raw_blocks_rol}}, IO::KaitaiStruct::Stream::process_rotate_left($self->{_raw__raw_blocks_rol}[$i], $self->_io()->pos() - 4 * $i, 1);
        my $io__raw_blocks_rol = IO::KaitaiStruct::Stream->new($self->{_raw_blocks_rol}[$i]);
        push @{$self->{blocks_rol}}, ProcessRepeatUsertypeDynargRotate::Block->new($io__raw_blocks_rol, $self, $self->{_root});
    }
    $self->{_raw_blocks_ror} = [];
    $self->{_raw__raw_blocks_ror} = [];
    $self->{blocks_ror} = [];
    my $n_blocks_ror = 3;
    for (my $i = 0; $i < $n_blocks_ror; $i++) {
        push @{$self->{_raw__raw_blocks_ror}}, $self->{_io}->read_bytes(3);
        push @{$self->{_raw_blocks_ror}}, IO::KaitaiStruct::Stream::process_rotate_left($self->{_raw__raw_blocks_ror}[$i], 8 - (($self->_io()->pos() - 6) - 4 * $i), 1);
        my $io__raw_blocks_ror = IO::KaitaiStruct::Stream->new($self->{_raw_blocks_ror}[$i]);
        push @{$self->{blocks_ror}}, ProcessRepeatUsertypeDynargRotate::Block->new($io__raw_blocks_ror, $self, $self->{_root});
    }
    $self->{blocks_b} = ProcessRepeatUsertypeDynargRotate::BlocksBWrapper->new($self->{_io}, $self, $self->{_root});
}

sub blocks_rol {
    my ($self) = @_;
    return $self->{blocks_rol};
}

sub blocks_ror {
    my ($self) = @_;
    return $self->{blocks_ror};
}

sub blocks_b {
    my ($self) = @_;
    return $self->{blocks_b};
}

sub _raw_blocks_rol {
    my ($self) = @_;
    return $self->{_raw_blocks_rol};
}

sub _raw__raw_blocks_rol {
    my ($self) = @_;
    return $self->{_raw__raw_blocks_rol};
}

sub _raw_blocks_ror {
    my ($self) = @_;
    return $self->{_raw_blocks_ror};
}

sub _raw__raw_blocks_ror {
    my ($self) = @_;
    return $self->{_raw__raw_blocks_ror};
}

########################################################################
package ProcessRepeatUsertypeDynargRotate::Block;

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

    $self->{a} = $self->{_io}->read_u2le();
}

sub a {
    my ($self) = @_;
    return $self->{a};
}

########################################################################
package ProcessRepeatUsertypeDynargRotate::BlocksBWrapper;

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

sub blocks_rol_0_b {
    my ($self) = @_;
    return $self->{blocks_rol_0_b} if ($self->{blocks_rol_0_b});
    my $io = @{$self->_parent()->blocks_rol()}[0]->_io();
    my $_pos = $io->pos();
    $io->seek(2);
    $self->{blocks_rol_0_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_rol_0_b};
}

sub blocks_rol_1_b {
    my ($self) = @_;
    return $self->{blocks_rol_1_b} if ($self->{blocks_rol_1_b});
    my $io = @{$self->_parent()->blocks_rol()}[1]->_io();
    my $_pos = $io->pos();
    $io->seek(2);
    $self->{blocks_rol_1_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_rol_1_b};
}

sub blocks_ror_0_b {
    my ($self) = @_;
    return $self->{blocks_ror_0_b} if ($self->{blocks_ror_0_b});
    my $io = @{$self->_parent()->blocks_ror()}[0]->_io();
    my $_pos = $io->pos();
    $io->seek(2);
    $self->{blocks_ror_0_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_ror_0_b};
}

sub blocks_ror_1_b {
    my ($self) = @_;
    return $self->{blocks_ror_1_b} if ($self->{blocks_ror_1_b});
    my $io = @{$self->_parent()->blocks_ror()}[1]->_io();
    my $_pos = $io->pos();
    $io->seek(2);
    $self->{blocks_ror_1_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_ror_1_b};
}

sub blocks_ror_2_b {
    my ($self) = @_;
    return $self->{blocks_ror_2_b} if ($self->{blocks_ror_2_b});
    my $io = @{$self->_parent()->blocks_ror()}[2]->_io();
    my $_pos = $io->pos();
    $io->seek(2);
    $self->{blocks_ror_2_b} = $io->read_u1();
    $io->seek($_pos);
    return $self->{blocks_ror_2_b};
}

sub dummy {
    my ($self) = @_;
    return $self->{dummy};
}

1;
