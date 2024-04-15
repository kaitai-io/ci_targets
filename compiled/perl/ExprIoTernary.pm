# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package ExprIoTernary;

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

    $self->{flag} = $self->{_io}->read_u1();
    $self->{_raw_obj1} = $self->{_io}->read_bytes(4);
    my $io__raw_obj1 = IO::KaitaiStruct::Stream->new($self->{_raw_obj1});
    $self->{obj1} = ExprIoTernary::One->new($io__raw_obj1, $self, $self->{_root});
    $self->{_raw_obj2} = $self->{_io}->read_bytes(8);
    my $io__raw_obj2 = IO::KaitaiStruct::Stream->new($self->{_raw_obj2});
    $self->{obj2} = ExprIoTernary::Two->new($io__raw_obj2, $self, $self->{_root});
}

sub one_or_two_io {
    my ($self) = @_;
    return $self->{one_or_two_io} if ($self->{one_or_two_io});
    $self->{one_or_two_io} = ($self->flag() == 64 ? $self->obj1() : $self->obj2())->_io();
    return $self->{one_or_two_io};
}

sub one_or_two_io_size1 {
    my ($self) = @_;
    return $self->{one_or_two_io_size1} if ($self->{one_or_two_io_size1});
    $self->{one_or_two_io_size1} = ($self->flag() == 64 ? $self->obj1() : $self->obj2())->_io()->size();
    return $self->{one_or_two_io_size1};
}

sub one_or_two_io_size2 {
    my ($self) = @_;
    return $self->{one_or_two_io_size2} if ($self->{one_or_two_io_size2});
    $self->{one_or_two_io_size2} = $self->one_or_two_io()->size();
    return $self->{one_or_two_io_size2};
}

sub one_or_two_io_size_add_3 {
    my ($self) = @_;
    return $self->{one_or_two_io_size_add_3} if ($self->{one_or_two_io_size_add_3});
    $self->{one_or_two_io_size_add_3} = ($self->flag() == 64 ? $self->obj1() : $self->obj2())->_io()->size() + 3;
    return $self->{one_or_two_io_size_add_3};
}

sub one_or_two_obj {
    my ($self) = @_;
    return $self->{one_or_two_obj} if ($self->{one_or_two_obj});
    $self->{one_or_two_obj} = ($self->flag() == 64 ? $self->obj1() : $self->obj2());
    return $self->{one_or_two_obj};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub obj1 {
    my ($self) = @_;
    return $self->{obj1};
}

sub obj2 {
    my ($self) = @_;
    return $self->{obj2};
}

sub _raw_obj1 {
    my ($self) = @_;
    return $self->{_raw_obj1};
}

sub _raw_obj2 {
    my ($self) = @_;
    return $self->{_raw_obj2};
}

########################################################################
package ExprIoTernary::One;

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

    $self->{one} = $self->{_io}->read_u1();
}

sub one {
    my ($self) = @_;
    return $self->{one};
}

########################################################################
package ExprIoTernary::Two;

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

    $self->{two} = $self->{_io}->read_u1();
}

sub two {
    my ($self) = @_;
    return $self->{two};
}

1;
