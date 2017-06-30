# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;

########################################################################
package DefaultEndianExprInherited;

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
        push @{$self->{docs}}, DefaultEndianExprInherited::Doc->new($self->{_io}, $self, $self->{_root});
    }
}

sub docs {
    my ($self) = @_;
    return $self->{docs};
}

########################################################################
package DefaultEndianExprInherited::Doc;

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
    $self->{main} = DefaultEndianExprInherited::Doc::MainObj->new($self->{_io}, $self, $self->{_root});
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
package DefaultEndianExprInherited::Doc::MainObj;

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

    my $_on = $self->_parent()->indicator();
    if ($_on eq pack('C*', (73, 73))) {
        $self->{_is_le} = 1;
    }
    else {
        $self->{_is_le} = 0;
    }
    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }
}

sub _read_le {
    my ($self) = @_;

    $self->{insides} = DefaultEndianExprInherited::Doc::MainObj::SubObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
}

sub _read_be {
    my ($self) = @_;

    $self->{insides} = DefaultEndianExprInherited::Doc::MainObj::SubObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
}

sub insides {
    my ($self) = @_;
    return $self->{insides};
}

########################################################################
package DefaultEndianExprInherited::Doc::MainObj::SubObj;

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

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }
}

sub _read_le {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4le();
    $self->{more} = DefaultEndianExprInherited::Doc::MainObj::SubObj::SubsubObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
}

sub _read_be {
    my ($self) = @_;

    $self->{some_int} = $self->{_io}->read_u4be();
    $self->{more} = DefaultEndianExprInherited::Doc::MainObj::SubObj::SubsubObj->new($self->{_io}, $self, $self->{_root}, $self->{_is_le});
}

sub some_int {
    my ($self) = @_;
    return $self->{some_int};
}

sub more {
    my ($self) = @_;
    return $self->{more};
}

########################################################################
package DefaultEndianExprInherited::Doc::MainObj::SubObj::SubsubObj;

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

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    if (!(defined $self->{_is_le})) {
        die "Unable to decide on endianness";
    } elsif ($self->{_is_le}) {
        $self->_read_le();
    } else {
        $self->_read_be();
    }
}

sub _read_le {
    my ($self) = @_;

    $self->{some_int1} = $self->{_io}->read_u2le();
    $self->{some_int2} = $self->{_io}->read_u2le();
}

sub _read_be {
    my ($self) = @_;

    $self->{some_int1} = $self->{_io}->read_u2be();
    $self->{some_int2} = $self->{_io}->read_u2be();
}

sub some_inst {
    my ($self) = @_;
    return $self->{some_inst} if ($self->{some_inst});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(2);
    if ($self->{_is_le}) {
        $self->{some_inst} = $self->{_io}->read_u4le();
    } else {
        $self->{some_inst} = $self->{_io}->read_u4be();
    }
    $self->{_io}->seek($_pos);
    return $self->{some_inst};
}

sub some_int1 {
    my ($self) = @_;
    return $self->{some_int1};
}

sub some_int2 {
    my ($self) = @_;
    return $self->{some_int2};
}

1;
