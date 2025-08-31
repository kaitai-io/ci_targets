# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package InstanceIoUserEarlier;

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

    $self->{_raw_sized_a} = $self->{_io}->read_bytes(6);
    my $io__raw_sized_a = IO::KaitaiStruct::Stream->new($self->{_raw_sized_a});
    $self->{sized_a} = InstanceIoUserEarlier::Slot->new($io__raw_sized_a, $self, $self->{_root});
    $self->{_raw_sized_b} = $self->{_io}->read_bytes(6);
    my $io__raw_sized_b = IO::KaitaiStruct::Stream->new($self->{_raw_sized_b});
    $self->{sized_b} = InstanceIoUserEarlier::Slot->new($io__raw_sized_b, $self, $self->{_root});
    $self->{into_b} = InstanceIoUserEarlier::Foo->new($self->{_io}, $self, $self->{_root});
    $self->{into_a_skipped} = InstanceIoUserEarlier::Foo->new($self->{_io}, $self, $self->{_root});
    $self->{into_a} = InstanceIoUserEarlier::Foo->new($self->{_io}, $self, $self->{_root});
    $self->{last_accessor} = InstanceIoUserEarlier::Baz->new($self->{_io}, $self, $self->{_root});
}

sub a_mid {
    my ($self) = @_;
    return $self->{a_mid} if ($self->{a_mid});
    my $io = $self->into_a()->inst()->_io();
    my $_pos = $io->pos();
    $io->seek(1);
    $self->{a_mid} = $io->read_u2le();
    $io->seek($_pos);
    return $self->{a_mid};
}

sub b_mid {
    my ($self) = @_;
    return $self->{b_mid} if ($self->{b_mid});
    my $io = $self->into_b()->inst()->_io();
    my $_pos = $io->pos();
    $io->seek(1);
    $self->{b_mid} = $io->read_u2le();
    $io->seek($_pos);
    return $self->{b_mid};
}

sub sized_a {
    my ($self) = @_;
    return $self->{sized_a};
}

sub sized_b {
    my ($self) = @_;
    return $self->{sized_b};
}

sub into_b {
    my ($self) = @_;
    return $self->{into_b};
}

sub into_a_skipped {
    my ($self) = @_;
    return $self->{into_a_skipped};
}

sub into_a {
    my ($self) = @_;
    return $self->{into_a};
}

sub last_accessor {
    my ($self) = @_;
    return $self->{last_accessor};
}

sub _raw_sized_a {
    my ($self) = @_;
    return $self->{_raw_sized_a};
}

sub _raw_sized_b {
    my ($self) = @_;
    return $self->{_raw_sized_b};
}

########################################################################
package InstanceIoUserEarlier::Baz;

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

    if ($self->_parent()->into_b()->inst()->last() == 89) {
        $self->{v} = $self->{_io}->read_u1();
    }
}

sub v {
    my ($self) = @_;
    return $self->{v};
}

########################################################################
package InstanceIoUserEarlier::Foo;

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

    $self->{indicator} = $self->{_io}->read_u1();
    if ( (($self->inst()->_io()->size() != 0) && ($self->inst()->content() == 102)) ) {
        $self->{bar} = $self->{_io}->read_u1();
    }
}

sub inst {
    my ($self) = @_;
    return $self->{inst} if ($self->{inst});
    my $io = ($self->indicator() == 202 ? $self->_parent()->sized_b()->_io() : $self->_parent()->sized_a()->_io());
    my $_pos = $io->pos();
    $io->seek(1);
    $self->{_raw_inst} = $io->read_bytes(($self->_io()->pos() != 14 ? 4 : 0));
    my $io__raw_inst = IO::KaitaiStruct::Stream->new($self->{_raw_inst});
    $self->{inst} = InstanceIoUserEarlier::Slot->new($io__raw_inst, $self, $self->{_root});
    $io->seek($_pos);
    return $self->{inst};
}

sub indicator {
    my ($self) = @_;
    return $self->{indicator};
}

sub bar {
    my ($self) = @_;
    return $self->{bar};
}

sub _raw_inst {
    my ($self) = @_;
    return $self->{_raw_inst};
}

########################################################################
package InstanceIoUserEarlier::Slot;

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

    if ($self->_io()->size() != 0) {
        $self->{content} = $self->{_io}->read_u1();
    }
}

sub last {
    my ($self) = @_;
    return $self->{last} if ($self->{last});
    if ($self->_io()->size() != 0) {
        my $_pos = $self->{_io}->pos();
        $self->{_io}->seek($self->_io()->size() - 1);
        $self->{last} = $self->{_io}->read_u1();
        $self->{_io}->seek($_pos);
    }
    return $self->{last};
}

sub content {
    my ($self) = @_;
    return $self->{content};
}

1;
