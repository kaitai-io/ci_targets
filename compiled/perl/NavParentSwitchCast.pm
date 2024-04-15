# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package NavParentSwitchCast;

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

    $self->{main} = NavParentSwitchCast::Foo->new($self->{_io}, $self, $self->{_root});
}

sub main {
    my ($self) = @_;
    return $self->{main};
}

########################################################################
package NavParentSwitchCast::Foo;

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

    $self->{buf_type} = $self->{_io}->read_u1();
    $self->{flag} = $self->{_io}->read_u1();
    my $_on = $self->buf_type();
    if ($_on == 0) {
        $self->{_raw_buf} = $self->{_io}->read_bytes(4);
        my $io__raw_buf = IO::KaitaiStruct::Stream->new($self->{_raw_buf});
        $self->{buf} = NavParentSwitchCast::Foo::Zero->new($io__raw_buf, $self, $self->{_root});
    }
    elsif ($_on == 1) {
        $self->{_raw_buf} = $self->{_io}->read_bytes(4);
        my $io__raw_buf = IO::KaitaiStruct::Stream->new($self->{_raw_buf});
        $self->{buf} = NavParentSwitchCast::Foo::One->new($io__raw_buf, $self, $self->{_root});
    }
    else {
        $self->{buf} = $self->{_io}->read_bytes(4);
    }
}

sub buf_type {
    my ($self) = @_;
    return $self->{buf_type};
}

sub flag {
    my ($self) = @_;
    return $self->{flag};
}

sub buf {
    my ($self) = @_;
    return $self->{buf};
}

sub _raw_buf {
    my ($self) = @_;
    return $self->{_raw_buf};
}

########################################################################
package NavParentSwitchCast::Foo::Common;

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

}

sub flag {
    my ($self) = @_;
    return $self->{flag} if ($self->{flag});
    $self->{flag} = $self->_parent()->_parent()->flag();
    return $self->{flag};
}

########################################################################
package NavParentSwitchCast::Foo::One;

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

    $self->{branch} = NavParentSwitchCast::Foo::Common->new($self->{_io}, $self, $self->{_root});
}

sub branch {
    my ($self) = @_;
    return $self->{branch};
}

########################################################################
package NavParentSwitchCast::Foo::Zero;

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

    $self->{branch} = NavParentSwitchCast::Foo::Common->new($self->{_io}, $self, $self->{_root});
}

sub branch {
    my ($self) = @_;
    return $self->{branch};
}

1;
