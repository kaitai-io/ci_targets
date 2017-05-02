# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.007_000;
use Encode;

########################################################################
package Expr2;

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

    $self->{str1} = Expr2::ModStr->new($self->{_io}, $self, $self->{_root});
    $self->{str2} = Expr2::ModStr->new($self->{_io}, $self, $self->{_root});

    return $self;
}

sub str1_len_mod {
    my ($self) = @_;
    return $self->{str1_len_mod} if ($self->{str1_len_mod});
    $self->{str1_len_mod} = $self->str1()->len_mod();
    return $self->{str1_len_mod};
}

sub str1_len {
    my ($self) = @_;
    return $self->{str1_len} if ($self->{str1_len});
    $self->{str1_len} = length($self->str1()->str());
    return $self->{str1_len};
}

sub str1_tuple5 {
    my ($self) = @_;
    return $self->{str1_tuple5} if ($self->{str1_tuple5});
    $self->{str1_tuple5} = $self->str1()->tuple5();
    return $self->{str1_tuple5};
}

sub str2_tuple5 {
    my ($self) = @_;
    return $self->{str2_tuple5} if ($self->{str2_tuple5});
    $self->{str2_tuple5} = $self->str2()->tuple5();
    return $self->{str2_tuple5};
}

sub str1_avg {
    my ($self) = @_;
    return $self->{str1_avg} if ($self->{str1_avg});
    $self->{str1_avg} = $self->str1()->rest()->avg();
    return $self->{str1_avg};
}

sub str1_byte1 {
    my ($self) = @_;
    return $self->{str1_byte1} if ($self->{str1_byte1});
    $self->{str1_byte1} = $self->str1()->rest()->byte1();
    return $self->{str1_byte1};
}

sub str1_char5 {
    my ($self) = @_;
    return $self->{str1_char5} if ($self->{str1_char5});
    $self->{str1_char5} = $self->str1()->char5();
    return $self->{str1_char5};
}

sub str1 {
    my ($self) = @_;
    return $self->{str1};
}

sub str2 {
    my ($self) = @_;
    return $self->{str2};
}

########################################################################
package Expr2::ModStr;

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

    $self->{len_orig} = $self->{_io}->read_u2le();
    $self->{str} = Encode::decode("UTF-8", $self->{_io}->read_bytes($self->len_mod()));
    $self->{_raw_rest} = $self->{_io}->read_bytes(3);
    my $io__raw_rest = IO::KaitaiStruct::Stream->new($self->{_raw_rest});
    $self->{rest} = Expr2::Tuple->new($io__raw_rest, $self, $self->{_root});

    return $self;
}

sub len_mod {
    my ($self) = @_;
    return $self->{len_mod} if ($self->{len_mod});
    $self->{len_mod} = ($self->len_orig() - 3);
    return $self->{len_mod};
}

sub char5 {
    my ($self) = @_;
    return $self->{char5} if ($self->{char5});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(5);
    $self->{char5} = Encode::decode("ASCII", $self->{_io}->read_bytes(1));
    $self->{_io}->seek($_pos);
    return $self->{char5};
}

sub tuple5 {
    my ($self) = @_;
    return $self->{tuple5} if ($self->{tuple5});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(5);
    $self->{tuple5} = Expr2::Tuple->new($self->{_io}, $self, $self->{_root});
    $self->{_io}->seek($_pos);
    return $self->{tuple5};
}

sub len_orig {
    my ($self) = @_;
    return $self->{len_orig};
}

sub str {
    my ($self) = @_;
    return $self->{str};
}

sub rest {
    my ($self) = @_;
    return $self->{rest};
}

sub _raw_rest {
    my ($self) = @_;
    return $self->{_raw_rest};
}

########################################################################
package Expr2::Tuple;

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

    $self->{byte0} = $self->{_io}->read_u1();
    $self->{byte1} = $self->{_io}->read_u1();
    $self->{byte2} = $self->{_io}->read_u1();

    return $self;
}

sub avg {
    my ($self) = @_;
    return $self->{avg} if ($self->{avg});
    $self->{avg} = int(($self->byte1() + $self->byte2()) / 2);
    return $self->{avg};
}

sub byte0 {
    my ($self) = @_;
    return $self->{byte0};
}

sub byte1 {
    my ($self) = @_;
    return $self->{byte1};
}

sub byte2 {
    my ($self) = @_;
    return $self->{byte2};
}

1;
