# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package CastNested;

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

    $self->{opcodes} = ();
    while (!$self->{_io}->is_eof()) {
        push @{$self->{opcodes}}, CastNested::Opcode->new($self->{_io}, $self, $self->{_root});
    }
}

sub opcodes_0_str {
    my ($self) = @_;
    return $self->{opcodes_0_str} if ($self->{opcodes_0_str});
    $self->{opcodes_0_str} = @{$self->opcodes()}[0]->body();
    return $self->{opcodes_0_str};
}

sub opcodes_0_str_value {
    my ($self) = @_;
    return $self->{opcodes_0_str_value} if ($self->{opcodes_0_str_value});
    $self->{opcodes_0_str_value} = @{$self->opcodes()}[0]->body()->value();
    return $self->{opcodes_0_str_value};
}

sub opcodes_1_int {
    my ($self) = @_;
    return $self->{opcodes_1_int} if ($self->{opcodes_1_int});
    $self->{opcodes_1_int} = @{$self->opcodes()}[1]->body();
    return $self->{opcodes_1_int};
}

sub opcodes_1_int_value {
    my ($self) = @_;
    return $self->{opcodes_1_int_value} if ($self->{opcodes_1_int_value});
    $self->{opcodes_1_int_value} = @{$self->opcodes()}[1]->body()->value();
    return $self->{opcodes_1_int_value};
}

sub opcodes {
    my ($self) = @_;
    return $self->{opcodes};
}

########################################################################
package CastNested::Opcode;

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

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == 73) {
        $self->{body} = CastNested::Opcode::Intval->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == 83) {
        $self->{body} = CastNested::Opcode::Strval->new($self->{_io}, $self, $self->{_root});
    }
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
package CastNested::Opcode::Intval;

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

    $self->{value} = $self->{_io}->read_u1();
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package CastNested::Opcode::Strval;

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

    $self->{value} = Encode::decode("ASCII", $self->{_io}->read_bytes_term(0, 0, 1, 1));
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
