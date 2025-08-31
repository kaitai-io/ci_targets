# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package InstanceInSized;

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

    $self->{_raw_cont} = $self->{_io}->read_bytes(16);
    my $io__raw_cont = IO::KaitaiStruct::Stream->new($self->{_raw_cont});
    $self->{cont} = InstanceInSized::Wrapper->new($io__raw_cont, $self, $self->{_root});
}

sub cont {
    my ($self) = @_;
    return $self->{cont};
}

sub _raw_cont {
    my ($self) = @_;
    return $self->{_raw_cont};
}

########################################################################
package InstanceInSized::Bar;

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

    $self->{seq_f} = $self->{_io}->read_u1();
}

sub inst {
    my ($self) = @_;
    return $self->{inst} if ($self->{inst});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(4 + 1);
    $self->{inst} = $self->{_io}->read_bytes(3);
    $self->{_io}->seek($_pos);
    return $self->{inst};
}

sub seq_f {
    my ($self) = @_;
    return $self->{seq_f};
}

########################################################################
package InstanceInSized::Baz;

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

    $self->{seq_f} = $self->{_io}->read_u1();
}

sub inst {
    my ($self) = @_;
    return $self->{inst} if ($self->{inst});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(8 + 1);
    $self->{inst} = $self->{_io}->read_bytes(3);
    $self->{_io}->seek($_pos);
    return $self->{inst};
}

sub seq_f {
    my ($self) = @_;
    return $self->{seq_f};
}

########################################################################
package InstanceInSized::Qux;

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

    if ($self->inst_invoked() > 0) {
        $self->{seq_f} = $self->{_io}->read_u1();
    }
}

sub inst_invoked {
    my ($self) = @_;
    return $self->{inst_invoked} if ($self->{inst_invoked});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 1);
    $self->{inst_invoked} = $self->{_io}->read_u1();
    $self->{_io}->seek($_pos);
    return $self->{inst_invoked};
}

sub inst_unused_by_seq {
    my ($self) = @_;
    return $self->{inst_unused_by_seq} if ($self->{inst_unused_by_seq});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 1);
    $self->{inst_unused_by_seq} = $self->{_io}->read_bytes(2);
    $self->{_io}->seek($_pos);
    return $self->{inst_unused_by_seq};
}

sub seq_f {
    my ($self) = @_;
    return $self->{seq_f};
}

########################################################################
package InstanceInSized::Wrapper;

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

    $self->{_raw_seq_sized} = $self->{_io}->read_bytes(4);
    my $io__raw_seq_sized = IO::KaitaiStruct::Stream->new($self->{_raw_seq_sized});
    $self->{seq_sized} = InstanceInSized::Qux->new($io__raw_seq_sized, $self, $self->{_root});
    $self->{seq_in_stream} = InstanceInSized::Bar->new($self->{_io}, $self, $self->{_root});
}

sub inst_in_stream {
    my ($self) = @_;
    return $self->{inst_in_stream} if ($self->{inst_in_stream});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 3);
    $self->{inst_in_stream} = InstanceInSized::Baz->new($self->{_io}, $self, $self->{_root});
    $self->{_io}->seek($_pos);
    return $self->{inst_in_stream};
}

sub inst_sized {
    my ($self) = @_;
    return $self->{inst_sized} if ($self->{inst_sized});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek($self->_io()->pos() + 7);
    $self->{_raw_inst_sized} = $self->{_io}->read_bytes(4);
    my $io__raw_inst_sized = IO::KaitaiStruct::Stream->new($self->{_raw_inst_sized});
    $self->{inst_sized} = InstanceInSized::Qux->new($io__raw_inst_sized, $self, $self->{_root});
    $self->{_io}->seek($_pos);
    return $self->{inst_sized};
}

sub seq_sized {
    my ($self) = @_;
    return $self->{seq_sized};
}

sub seq_in_stream {
    my ($self) = @_;
    return $self->{seq_in_stream};
}

sub _raw_seq_sized {
    my ($self) = @_;
    return $self->{_raw_seq_sized};
}

sub _raw_inst_sized {
    my ($self) = @_;
    return $self->{_raw_inst_sized};
}

1;
