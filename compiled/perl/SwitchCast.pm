# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package SwitchCast;

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
        push @{$self->{opcodes}}, SwitchCast::Opcode->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub first_obj {
    my ($self) = @_;
    return $self->{first_obj} if ($self->{first_obj});
    $self->{first_obj} = $self->opcodes()[0]->body();
    return $self->{first_obj};
}

sub second_val {
    my ($self) = @_;
    return $self->{second_val} if ($self->{second_val});
    $self->{second_val} = $self->opcodes()[1]->body()->value();
    return $self->{second_val};
}

sub err_cast {
    my ($self) = @_;
    return $self->{err_cast} if ($self->{err_cast});
    $self->{err_cast} = $self->opcodes()[2]->body();
    return $self->{err_cast};
}

sub opcodes {
    my ($self) = @_;
    return $self->{opcodes};
}

########################################################################
package SwitchCast::Opcode;

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

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == 73) {
        $self->{body} = SwitchCast::Intval->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == 83) {
        $self->{body} = SwitchCast::Strval->new($self->{_io}, $self, $self->{_root});
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
package SwitchCast::Intval;

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
package SwitchCast::Strval;

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

1;
