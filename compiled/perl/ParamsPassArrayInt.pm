# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package ParamsPassArrayInt;

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

    $self->{ints} = ();
    my $n_ints = 3;
    for (my $i = 0; $i < $n_ints; $i++) {
        $self->{ints}[$i] = $self->{_io}->read_u2le();
    }
    $self->{pass_ints} = ParamsPassArrayInt::WantsInts->new($self->{_io}, $self, $self->{_root});
    $self->{pass_ints_calc} = ParamsPassArrayInt::WantsInts->new($self->{_io}, $self, $self->{_root});
}

sub ints_calc {
    my ($self) = @_;
    return $self->{ints_calc} if ($self->{ints_calc});
    $self->{ints_calc} = (27643, 7);
    return $self->{ints_calc};
}

sub ints {
    my ($self) = @_;
    return $self->{ints};
}

sub pass_ints {
    my ($self) = @_;
    return $self->{pass_ints};
}

sub pass_ints_calc {
    my ($self) = @_;
    return $self->{pass_ints_calc};
}

########################################################################
package ParamsPassArrayInt::WantsInts;

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

}

sub nums {
    my ($self) = @_;
    return $self->{nums};
}

1;
