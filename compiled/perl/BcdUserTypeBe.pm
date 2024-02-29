# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.011_000;

########################################################################
package BcdUserTypeBe;

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

    $self->{_raw_ltr} = $self->{_io}->read_bytes(4);
    my $io__raw_ltr = IO::KaitaiStruct::Stream->new($self->{_raw_ltr});
    $self->{ltr} = BcdUserTypeBe::LtrObj->new($io__raw_ltr, $self, $self->{_root});
    $self->{_raw_rtl} = $self->{_io}->read_bytes(4);
    my $io__raw_rtl = IO::KaitaiStruct::Stream->new($self->{_raw_rtl});
    $self->{rtl} = BcdUserTypeBe::RtlObj->new($io__raw_rtl, $self, $self->{_root});
    $self->{_raw_leading_zero_ltr} = $self->{_io}->read_bytes(4);
    my $io__raw_leading_zero_ltr = IO::KaitaiStruct::Stream->new($self->{_raw_leading_zero_ltr});
    $self->{leading_zero_ltr} = BcdUserTypeBe::LeadingZeroLtrObj->new($io__raw_leading_zero_ltr, $self, $self->{_root});
}

sub ltr {
    my ($self) = @_;
    return $self->{ltr};
}

sub rtl {
    my ($self) = @_;
    return $self->{rtl};
}

sub leading_zero_ltr {
    my ($self) = @_;
    return $self->{leading_zero_ltr};
}

sub _raw_ltr {
    my ($self) = @_;
    return $self->{_raw_ltr};
}

sub _raw_rtl {
    my ($self) = @_;
    return $self->{_raw_rtl};
}

sub _raw_leading_zero_ltr {
    my ($self) = @_;
    return $self->{_raw_leading_zero_ltr};
}

########################################################################
package BcdUserTypeBe::LeadingZeroLtrObj;

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

    $self->{b1} = $self->{_io}->read_u1();
    $self->{b2} = $self->{_io}->read_u1();
    $self->{b3} = $self->{_io}->read_u1();
    $self->{b4} = $self->{_io}->read_u1();
}

sub as_int {
    my ($self) = @_;
    return $self->{as_int} if ($self->{as_int});
    $self->{as_int} = (((((((($self->digit8() * 1) + ($self->digit7() * 10)) + ($self->digit6() * 100)) + ($self->digit5() * 1000)) + ($self->digit4() * 10000)) + ($self->digit3() * 100000)) + ($self->digit2() * 1000000)) + ($self->digit1() * 10000000));
    return $self->{as_int};
}

sub as_str {
    my ($self) = @_;
    return $self->{as_str} if ($self->{as_str});
    $self->{as_str} = sprintf('%d', $self->digit1()) . sprintf('%d', $self->digit2()) . sprintf('%d', $self->digit3()) . sprintf('%d', $self->digit4()) . sprintf('%d', $self->digit5()) . sprintf('%d', $self->digit6()) . sprintf('%d', $self->digit7()) . sprintf('%d', $self->digit8());
    return $self->{as_str};
}

sub digit1 {
    my ($self) = @_;
    return $self->{digit1} if ($self->{digit1});
    $self->{digit1} = (($self->b1() & 240) >> 4);
    return $self->{digit1};
}

sub digit2 {
    my ($self) = @_;
    return $self->{digit2} if ($self->{digit2});
    $self->{digit2} = ($self->b1() & 15);
    return $self->{digit2};
}

sub digit3 {
    my ($self) = @_;
    return $self->{digit3} if ($self->{digit3});
    $self->{digit3} = (($self->b2() & 240) >> 4);
    return $self->{digit3};
}

sub digit4 {
    my ($self) = @_;
    return $self->{digit4} if ($self->{digit4});
    $self->{digit4} = ($self->b2() & 15);
    return $self->{digit4};
}

sub digit5 {
    my ($self) = @_;
    return $self->{digit5} if ($self->{digit5});
    $self->{digit5} = (($self->b3() & 240) >> 4);
    return $self->{digit5};
}

sub digit6 {
    my ($self) = @_;
    return $self->{digit6} if ($self->{digit6});
    $self->{digit6} = ($self->b3() & 15);
    return $self->{digit6};
}

sub digit7 {
    my ($self) = @_;
    return $self->{digit7} if ($self->{digit7});
    $self->{digit7} = (($self->b4() & 240) >> 4);
    return $self->{digit7};
}

sub digit8 {
    my ($self) = @_;
    return $self->{digit8} if ($self->{digit8});
    $self->{digit8} = ($self->b4() & 15);
    return $self->{digit8};
}

sub b1 {
    my ($self) = @_;
    return $self->{b1};
}

sub b2 {
    my ($self) = @_;
    return $self->{b2};
}

sub b3 {
    my ($self) = @_;
    return $self->{b3};
}

sub b4 {
    my ($self) = @_;
    return $self->{b4};
}

########################################################################
package BcdUserTypeBe::LtrObj;

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

    $self->{b1} = $self->{_io}->read_u1();
    $self->{b2} = $self->{_io}->read_u1();
    $self->{b3} = $self->{_io}->read_u1();
    $self->{b4} = $self->{_io}->read_u1();
}

sub as_int {
    my ($self) = @_;
    return $self->{as_int} if ($self->{as_int});
    $self->{as_int} = (((((((($self->digit8() * 1) + ($self->digit7() * 10)) + ($self->digit6() * 100)) + ($self->digit5() * 1000)) + ($self->digit4() * 10000)) + ($self->digit3() * 100000)) + ($self->digit2() * 1000000)) + ($self->digit1() * 10000000));
    return $self->{as_int};
}

sub as_str {
    my ($self) = @_;
    return $self->{as_str} if ($self->{as_str});
    $self->{as_str} = sprintf('%d', $self->digit1()) . sprintf('%d', $self->digit2()) . sprintf('%d', $self->digit3()) . sprintf('%d', $self->digit4()) . sprintf('%d', $self->digit5()) . sprintf('%d', $self->digit6()) . sprintf('%d', $self->digit7()) . sprintf('%d', $self->digit8());
    return $self->{as_str};
}

sub digit1 {
    my ($self) = @_;
    return $self->{digit1} if ($self->{digit1});
    $self->{digit1} = (($self->b1() & 240) >> 4);
    return $self->{digit1};
}

sub digit2 {
    my ($self) = @_;
    return $self->{digit2} if ($self->{digit2});
    $self->{digit2} = ($self->b1() & 15);
    return $self->{digit2};
}

sub digit3 {
    my ($self) = @_;
    return $self->{digit3} if ($self->{digit3});
    $self->{digit3} = (($self->b2() & 240) >> 4);
    return $self->{digit3};
}

sub digit4 {
    my ($self) = @_;
    return $self->{digit4} if ($self->{digit4});
    $self->{digit4} = ($self->b2() & 15);
    return $self->{digit4};
}

sub digit5 {
    my ($self) = @_;
    return $self->{digit5} if ($self->{digit5});
    $self->{digit5} = (($self->b3() & 240) >> 4);
    return $self->{digit5};
}

sub digit6 {
    my ($self) = @_;
    return $self->{digit6} if ($self->{digit6});
    $self->{digit6} = ($self->b3() & 15);
    return $self->{digit6};
}

sub digit7 {
    my ($self) = @_;
    return $self->{digit7} if ($self->{digit7});
    $self->{digit7} = (($self->b4() & 240) >> 4);
    return $self->{digit7};
}

sub digit8 {
    my ($self) = @_;
    return $self->{digit8} if ($self->{digit8});
    $self->{digit8} = ($self->b4() & 15);
    return $self->{digit8};
}

sub b1 {
    my ($self) = @_;
    return $self->{b1};
}

sub b2 {
    my ($self) = @_;
    return $self->{b2};
}

sub b3 {
    my ($self) = @_;
    return $self->{b3};
}

sub b4 {
    my ($self) = @_;
    return $self->{b4};
}

########################################################################
package BcdUserTypeBe::RtlObj;

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

    $self->{b1} = $self->{_io}->read_u1();
    $self->{b2} = $self->{_io}->read_u1();
    $self->{b3} = $self->{_io}->read_u1();
    $self->{b4} = $self->{_io}->read_u1();
}

sub as_int {
    my ($self) = @_;
    return $self->{as_int} if ($self->{as_int});
    $self->{as_int} = (((((((($self->digit1() * 1) + ($self->digit2() * 10)) + ($self->digit3() * 100)) + ($self->digit4() * 1000)) + ($self->digit5() * 10000)) + ($self->digit6() * 100000)) + ($self->digit7() * 1000000)) + ($self->digit8() * 10000000));
    return $self->{as_int};
}

sub as_str {
    my ($self) = @_;
    return $self->{as_str} if ($self->{as_str});
    $self->{as_str} = sprintf('%d', $self->digit8()) . sprintf('%d', $self->digit7()) . sprintf('%d', $self->digit6()) . sprintf('%d', $self->digit5()) . sprintf('%d', $self->digit4()) . sprintf('%d', $self->digit3()) . sprintf('%d', $self->digit2()) . sprintf('%d', $self->digit1());
    return $self->{as_str};
}

sub digit1 {
    my ($self) = @_;
    return $self->{digit1} if ($self->{digit1});
    $self->{digit1} = (($self->b1() & 240) >> 4);
    return $self->{digit1};
}

sub digit2 {
    my ($self) = @_;
    return $self->{digit2} if ($self->{digit2});
    $self->{digit2} = ($self->b1() & 15);
    return $self->{digit2};
}

sub digit3 {
    my ($self) = @_;
    return $self->{digit3} if ($self->{digit3});
    $self->{digit3} = (($self->b2() & 240) >> 4);
    return $self->{digit3};
}

sub digit4 {
    my ($self) = @_;
    return $self->{digit4} if ($self->{digit4});
    $self->{digit4} = ($self->b2() & 15);
    return $self->{digit4};
}

sub digit5 {
    my ($self) = @_;
    return $self->{digit5} if ($self->{digit5});
    $self->{digit5} = (($self->b3() & 240) >> 4);
    return $self->{digit5};
}

sub digit6 {
    my ($self) = @_;
    return $self->{digit6} if ($self->{digit6});
    $self->{digit6} = ($self->b3() & 15);
    return $self->{digit6};
}

sub digit7 {
    my ($self) = @_;
    return $self->{digit7} if ($self->{digit7});
    $self->{digit7} = (($self->b4() & 240) >> 4);
    return $self->{digit7};
}

sub digit8 {
    my ($self) = @_;
    return $self->{digit8} if ($self->{digit8});
    $self->{digit8} = ($self->b4() & 15);
    return $self->{digit8};
}

sub b1 {
    my ($self) = @_;
    return $self->{b1};
}

sub b2 {
    my ($self) = @_;
    return $self->{b2};
}

sub b3 {
    my ($self) = @_;
    return $self->{b3};
}

sub b4 {
    my ($self) = @_;
    return $self->{b4};
}

1;
