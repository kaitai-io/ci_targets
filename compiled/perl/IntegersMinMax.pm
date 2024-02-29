# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package IntegersMinMax;

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

    $self->{unsigned_min} = IntegersMinMax::Unsigned->new($self->{_io}, $self, $self->{_root});
    $self->{unsigned_max} = IntegersMinMax::Unsigned->new($self->{_io}, $self, $self->{_root});
    $self->{signed_min} = IntegersMinMax::Signed->new($self->{_io}, $self, $self->{_root});
    $self->{signed_max} = IntegersMinMax::Signed->new($self->{_io}, $self, $self->{_root});
}

sub unsigned_min {
    my ($self) = @_;
    return $self->{unsigned_min};
}

sub unsigned_max {
    my ($self) = @_;
    return $self->{unsigned_max};
}

sub signed_min {
    my ($self) = @_;
    return $self->{signed_min};
}

sub signed_max {
    my ($self) = @_;
    return $self->{signed_max};
}

########################################################################
package IntegersMinMax::Signed;

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

    $self->{s1} = $self->{_io}->read_s1();
    $self->{s2le} = $self->{_io}->read_s2le();
    $self->{s4le} = $self->{_io}->read_s4le();
    $self->{s8le} = $self->{_io}->read_s8le();
    $self->{s2be} = $self->{_io}->read_s2be();
    $self->{s4be} = $self->{_io}->read_s4be();
    $self->{s8be} = $self->{_io}->read_s8be();
}

sub s1 {
    my ($self) = @_;
    return $self->{s1};
}

sub s2le {
    my ($self) = @_;
    return $self->{s2le};
}

sub s4le {
    my ($self) = @_;
    return $self->{s4le};
}

sub s8le {
    my ($self) = @_;
    return $self->{s8le};
}

sub s2be {
    my ($self) = @_;
    return $self->{s2be};
}

sub s4be {
    my ($self) = @_;
    return $self->{s4be};
}

sub s8be {
    my ($self) = @_;
    return $self->{s8be};
}

########################################################################
package IntegersMinMax::Unsigned;

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

    $self->{u1} = $self->{_io}->read_u1();
    $self->{u2le} = $self->{_io}->read_u2le();
    $self->{u4le} = $self->{_io}->read_u4le();
    $self->{u8le} = $self->{_io}->read_u8le();
    $self->{u2be} = $self->{_io}->read_u2be();
    $self->{u4be} = $self->{_io}->read_u4be();
    $self->{u8be} = $self->{_io}->read_u8be();
}

sub u1 {
    my ($self) = @_;
    return $self->{u1};
}

sub u2le {
    my ($self) = @_;
    return $self->{u2le};
}

sub u4le {
    my ($self) = @_;
    return $self->{u4le};
}

sub u8le {
    my ($self) = @_;
    return $self->{u8le};
}

sub u2be {
    my ($self) = @_;
    return $self->{u2be};
}

sub u4be {
    my ($self) = @_;
    return $self->{u4be};
}

sub u8be {
    my ($self) = @_;
    return $self->{u8be};
}

1;
