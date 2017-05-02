# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package NavParent2;

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

    $self->{ofs_tags} = $self->{_io}->read_u4le();
    $self->{num_tags} = $self->{_io}->read_u4le();
    $self->{tags} = ();
    my $n_tags = $self->num_tags();
    for (my $i = 0; $i < $n_tags; $i++) {
        $self->{tags}[$i] = NavParent2::Tag->new($self->{_io}, $self, $self->{_root});
    }

    return $self;
}

sub ofs_tags {
    my ($self) = @_;
    return $self->{ofs_tags};
}

sub num_tags {
    my ($self) = @_;
    return $self->{num_tags};
}

sub tags {
    my ($self) = @_;
    return $self->{tags};
}

########################################################################
package NavParent2::Tag;

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

    $self->{name} = Encode::decode("ASCII", $self->{_io}->read_bytes(4));
    $self->{ofs} = $self->{_io}->read_u4le();
    $self->{num_items} = $self->{_io}->read_u4le();

    return $self;
}

sub tag_content {
    my ($self) = @_;
    return $self->{tag_content} if ($self->{tag_content});
    my $io = $self->_root()->_io();
    my $_pos = $io->pos();
    $io->seek($self->ofs());
    my $_on = $self->name();
    if ($_on eq "RAHC") {
        $self->{tag_content} = NavParent2::Tag::TagChar->new($io, $self, $self->{_root});
    }
    $io->seek($_pos);
    return $self->{tag_content};
}

sub name {
    my ($self) = @_;
    return $self->{name};
}

sub ofs {
    my ($self) = @_;
    return $self->{ofs};
}

sub num_items {
    my ($self) = @_;
    return $self->{num_items};
}

########################################################################
package NavParent2::Tag::TagChar;

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

    $self->{content} = Encode::decode("ASCII", $self->{_io}->read_bytes($self->_parent()->num_items()));

    return $self;
}

sub content {
    my ($self) = @_;
    return $self->{content};
}

1;
