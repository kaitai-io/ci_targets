# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;
use Encode;

########################################################################
package StrEncodingsEscapingEnc;

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

    $self->{len_of_1} = $self->{_io}->read_u2le();
    $self->{_raw_str1} = $self->{_io}->read_bytes($self->len_of_1());
    my $io__raw_str1 = IO::KaitaiStruct::Stream->new($self->{_raw_str1});
    $self->{str1} = StrEncodingsEscapingEnc::Str1Wrapper->new($io__raw_str1, $self, $self->{_root});
    $self->{len_of_2} = $self->{_io}->read_u2le();
    $self->{_raw_str2} = $self->{_io}->read_bytes($self->len_of_2());
    my $io__raw_str2 = IO::KaitaiStruct::Stream->new($self->{_raw_str2});
    $self->{str2} = StrEncodingsEscapingEnc::Str2Wrapper->new($io__raw_str2, $self, $self->{_root});
    $self->{len_of_3} = $self->{_io}->read_u2le();
    $self->{_raw_str3} = $self->{_io}->read_bytes($self->len_of_3());
    my $io__raw_str3 = IO::KaitaiStruct::Stream->new($self->{_raw_str3});
    $self->{str3} = StrEncodingsEscapingEnc::Str3Wrapper->new($io__raw_str3, $self, $self->{_root});
    $self->{len_of_4} = $self->{_io}->read_u2le();
    $self->{_raw_str4} = $self->{_io}->read_bytes($self->len_of_4());
    my $io__raw_str4 = IO::KaitaiStruct::Stream->new($self->{_raw_str4});
    $self->{str4} = StrEncodingsEscapingEnc::Str4Wrapper->new($io__raw_str4, $self, $self->{_root});
}

sub len_of_1 {
    my ($self) = @_;
    return $self->{len_of_1};
}

sub str1 {
    my ($self) = @_;
    return $self->{str1};
}

sub len_of_2 {
    my ($self) = @_;
    return $self->{len_of_2};
}

sub str2 {
    my ($self) = @_;
    return $self->{str2};
}

sub len_of_3 {
    my ($self) = @_;
    return $self->{len_of_3};
}

sub str3 {
    my ($self) = @_;
    return $self->{str3};
}

sub len_of_4 {
    my ($self) = @_;
    return $self->{len_of_4};
}

sub str4 {
    my ($self) = @_;
    return $self->{str4};
}

sub _raw_str1 {
    my ($self) = @_;
    return $self->{_raw_str1};
}

sub _raw_str2 {
    my ($self) = @_;
    return $self->{_raw_str2};
}

sub _raw_str3 {
    my ($self) = @_;
    return $self->{_raw_str3};
}

sub _raw_str4 {
    my ($self) = @_;
    return $self->{_raw_str4};
}

########################################################################
package StrEncodingsEscapingEnc::Str1Wrapper;

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

sub v {
    my ($self) = @_;
    return $self->{v} if ($self->{v});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{v} = Encode::decode("ASCII\\\\x", $self->{_io}->read_bytes_full());
    $self->{_io}->seek($_pos);
    return $self->{v};
}

########################################################################
package StrEncodingsEscapingEnc::Str2Wrapper;

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

sub v {
    my ($self) = @_;
    return $self->{v} if ($self->{v});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{v} = Encode::decode("UTF-8\\'x", $self->{_io}->read_bytes_full());
    $self->{_io}->seek($_pos);
    return $self->{v};
}

########################################################################
package StrEncodingsEscapingEnc::Str3Wrapper;

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

sub v {
    my ($self) = @_;
    return $self->{v} if ($self->{v});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{v} = Encode::decode("SJIS\\\"x", $self->{_io}->read_bytes_full());
    $self->{_io}->seek($_pos);
    return $self->{v};
}

########################################################################
package StrEncodingsEscapingEnc::Str4Wrapper;

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

sub v {
    my ($self) = @_;
    return $self->{v} if ($self->{v});
    my $_pos = $self->{_io}->pos();
    $self->{_io}->seek(0);
    $self->{v} = Encode::decode("IBM437\\nx", $self->{_io}->read_bytes_full());
    $self->{_io}->seek($_pos);
    return $self->{v};
}

1;
