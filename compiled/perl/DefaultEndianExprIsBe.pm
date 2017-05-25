# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package DefaultEndianExprIsBe;

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

    $self->{docs} = ();
    while (!$self->{_io}->is_eof()) {
        push @{$self->{docs}}, DefaultEndianExprIsBe::Doc->new($self->{_io}, $self, $self->{_root});
    }
}

sub docs {
    my ($self) = @_;
    return $self->{docs};
}

########################################################################
package DefaultEndianExprIsBe::Doc;

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

    $self->{indicator} = $self->{_io}->read_bytes(2);
    $self->{main} = DefaultEndianExprIsBe::Doc::MainObj->new($self->{_io}, $self, $self->{_root});
}

sub indicator {
    my ($self) = @_;
    return $self->{indicator};
}

sub main {
    my ($self) = @_;
    return $self->{main};
}

########################################################################
package DefaultEndianExprIsBe::Doc::MainObj;

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

    my $_on = $self->_parent()->indicator();
    if ($_on eq pack('C*', (77, 77))) {
        $self->{_is_le} = 0;
    }
    else {
        $self->{_is_le} = 1;
    }
    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }

    return $self;
}

sub _read_le {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4le();
    $self->{some_int_be} = $self->{_io}->read_u2be();
    $self->{some_int_le} = $self->{_io}->read_u2le();
}

sub _read_be {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4be();
    $self->{some_int_be} = $self->{_io}->read_u2be();
    $self->{some_int_le} = $self->{_io}->read_u2le();
}

sub inst_int {
    my ($self) = @_;
    return $self->{inst_int} if ($self->{inst_int});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(2);
    if ($self->{_is_le}) {
        $self->{inst_int} = $self->{_io}->read_u4le();
    } else {
        $self->{inst_int} = $self->{_io}->read_u4be();
    }
    $self->{_io}->seek($_pos);
    return $self->{inst_int};
}

sub inst_sub {
    my ($self) = @_;
    return $self->{inst_sub} if ($self->{inst_sub});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(2);
    if ($self->{_is_le}) {
        $self->{inst_sub} = DefaultEndianExprIsBe::Doc::MainObj::SubMainObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
    } else {
        $self->{inst_sub} = DefaultEndianExprIsBe::Doc::MainObj::SubMainObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
    }
    $self->{_io}->seek($_pos);
    return $self->{inst_sub};
}

sub some_int {
    my ($self) = @_;
    return $self->{some_int};
}

sub some_int_be {
    my ($self) = @_;
    return $self->{some_int_be};
}

sub some_int_le {
    my ($self) = @_;
    return $self->{some_int_le};
}

########################################################################
package DefaultEndianExprIsBe::Doc::MainObj::SubMainObj;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root, $_is_le) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;
    $self->{_is_le} = $_is_le;

    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }

    return $self;
}

sub _read_le {
    my ($self) = @_;

    $self->{foo} = $self->{_io}->read_u4le();
}

sub _read_be {
    my ($self) = @_;

    $self->{foo} = $self->{_io}->read_u4be();
}

sub foo {
    my ($self) = @_;
    return $self->{foo};
}

1;
