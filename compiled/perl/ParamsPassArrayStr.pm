# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package ParamsPassArrayStr;

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

    $self->{str_array} = [];
    my $n_str_array = 3;
    for (my $i = 0; $i < $n_str_array; $i++) {
        push @{$self->{str_array}}, Encode::decode("ASCII", $self->{_io}->read_bytes(2));
    }
    $self->{pass_str_array} = ParamsPassArrayStr::WantsStrs->new($self->{_io}, $self, $self->{_root});
    $self->{pass_str_array_calc} = ParamsPassArrayStr::WantsStrs->new($self->{_io}, $self, $self->{_root});
}

sub str_array_calc {
    my ($self) = @_;
    return $self->{str_array_calc} if ($self->{str_array_calc});
    $self->{str_array_calc} = ["aB", "Cd"];
    return $self->{str_array_calc};
}

sub str_array {
    my ($self) = @_;
    return $self->{str_array};
}

sub pass_str_array {
    my ($self) = @_;
    return $self->{pass_str_array};
}

sub pass_str_array_calc {
    my ($self) = @_;
    return $self->{pass_str_array_calc};
}

########################################################################
package ParamsPassArrayStr::WantsStrs;

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

sub strs {
    my ($self) = @_;
    return $self->{strs};
}

1;
