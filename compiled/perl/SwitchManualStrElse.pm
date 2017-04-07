# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Compress::Zlib;
use Encode;
use List::Util;

########################################################################
package SwitchManualStrElse;

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

    $self->{opcodes} = ();
    while (!$self->{_io}->is_eof()) {
        push @{$self->{opcodes}}, SwitchManualStrElse::Opcode->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub opcodes {
    my ($self) = @_;
    return $self->{opcodes};
}

########################################################################
package SwitchManualStrElse::Opcode;

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

    $self->{code} = Encode::decode("ASCII", $self->{_io}->read_bytes(1));
    my $_on = $self->code();
    if ($_on eq "I") {
        $self->{body} = SwitchManualStrElse::Opcode::Intval->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on eq "S") {
        $self->{body} = SwitchManualStrElse::Opcode::Strval->new($self->{_io}, $self, $self->{_root});
    }
    else {
        $self->{body} = SwitchManualStrElse::Opcode::Noneval->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

########################################################################
package SwitchManualStrElse::Opcode::Intval;

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

    $self->{value} = $self->{_io}->read_u1();

    return $self;
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package SwitchManualStrElse::Opcode::Strval;

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

    $self->{value} = Encode::decode("ASCII", $self->{_io}->read_bytes_term(0, 0, 1, 1));

    return $self;
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package SwitchManualStrElse::Opcode::Noneval;

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

    $self->{filler} = $self->{_io}->read_u4le();

    return $self;
}

sub filler {
    my ($self) = @_;
    return $self->{filler};
}

1;
