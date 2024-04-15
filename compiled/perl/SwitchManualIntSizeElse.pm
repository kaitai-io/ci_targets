# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package SwitchManualIntSizeElse;

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

    $self->{chunks} = [];
    while (!$self->{_io}->is_eof()) {
        push @{$self->{chunks}}, SwitchManualIntSizeElse::Chunk->new($self->{_io}, $self, $self->{_root});
    }
}

sub chunks {
    my ($self) = @_;
    return $self->{chunks};
}

########################################################################
package SwitchManualIntSizeElse::Chunk;

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

    $self->{code} = $self->{_io}->read_u1();
    $self->{size} = $self->{_io}->read_u4le();
    my $_on = $self->code();
    if ($_on == 17) {
        $self->{_raw_body} = $self->{_io}->read_bytes($self->size());
        my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body});
        $self->{body} = SwitchManualIntSizeElse::Chunk::ChunkMeta->new($io__raw_body, $self, $self->{_root});
    }
    elsif ($_on == 34) {
        $self->{_raw_body} = $self->{_io}->read_bytes($self->size());
        my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body});
        $self->{body} = SwitchManualIntSizeElse::Chunk::ChunkDir->new($io__raw_body, $self, $self->{_root});
    }
    else {
        $self->{_raw_body} = $self->{_io}->read_bytes($self->size());
        my $io__raw_body = IO::KaitaiStruct::Stream->new($self->{_raw_body});
        $self->{body} = SwitchManualIntSizeElse::Chunk::Dummy->new($io__raw_body, $self, $self->{_root});
    }
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub size {
    my ($self) = @_;
    return $self->{size};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

sub _raw_body {
    my ($self) = @_;
    return $self->{_raw_body};
}

########################################################################
package SwitchManualIntSizeElse::Chunk::ChunkDir;

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

    $self->{entries} = [];
    while (!$self->{_io}->is_eof()) {
        push @{$self->{entries}}, Encode::decode("UTF-8", $self->{_io}->read_bytes(4));
    }
}

sub entries {
    my ($self) = @_;
    return $self->{entries};
}

########################################################################
package SwitchManualIntSizeElse::Chunk::ChunkMeta;

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

    $self->{title} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
    $self->{author} = Encode::decode("UTF-8", $self->{_io}->read_bytes_term(0, 0, 1, 1));
}

sub title {
    my ($self) = @_;
    return $self->{title};
}

sub author {
    my ($self) = @_;
    return $self->{author};
}

########################################################################
package SwitchManualIntSizeElse::Chunk::Dummy;

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

    $self->{rest} = $self->{_io}->read_bytes_full();
}

sub rest {
    my ($self) = @_;
    return $self->{rest};
}

1;
