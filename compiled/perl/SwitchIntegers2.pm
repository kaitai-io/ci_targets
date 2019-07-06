# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

########################################################################
package SwitchIntegers2;

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

    $self->{code} = $self->{_io}->read_u1();
    my $_on = $self->code();
    if ($_on == 1) {
        $self->{len} = $self->{_io}->read_u1();
    }
    elsif ($_on == 2) {
        $self->{len} = $self->{_io}->read_u2le();
    }
    elsif ($_on == 4) {
        $self->{len} = $self->{_io}->read_u4le();
    }
    elsif ($_on == 8) {
        $self->{len} = $self->{_io}->read_u8le();
    }
    $self->{ham} = $self->{_io}->read_bytes($self->len());
    if ($self->len() > 3) {
        $self->{padding} = $self->{_io}->read_u1();
    }
}

sub len_mod_str {
    my ($self) = @_;
    return $self->{len_mod_str} if ($self->{len_mod_str});
    $self->{len_mod_str} = sprintf('%d', (($self->len() * 2) - 1));
    return $self->{len_mod_str};
}

sub code {
    my ($self) = @_;
    return $self->{code};
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

sub ham {
    my ($self) = @_;
    return $self->{ham};
}

sub padding {
    my ($self) = @_;
    return $self->{padding};
}

1;
