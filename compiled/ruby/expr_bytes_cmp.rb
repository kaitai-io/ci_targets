# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprBytesCmp < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = @_io.read_bytes(1)
    @two = @_io.read_bytes(3)
    self
  end
  def is_le
    return @is_le unless @is_le.nil?
    @is_le = two <= ack2
    @is_le
  end
  def ack
    return @ack unless @ack.nil?
    @ack = [65, 67, 75].pack('C*')
    @ack
  end
  def is_gt2
    return @is_gt2 unless @is_gt2.nil?
    @is_gt2 = hi_val > two
    @is_gt2
  end
  def is_gt
    return @is_gt unless @is_gt.nil?
    @is_gt = two > ack2
    @is_gt
  end
  def ack2
    return @ack2 unless @ack2.nil?
    @ack2 = [65, 67, 75, 50].pack('C*')
    @ack2
  end
  def is_eq
    return @is_eq unless @is_eq.nil?
    @is_eq = two == ack
    @is_eq
  end
  def is_lt2
    return @is_lt2 unless @is_lt2.nil?
    @is_lt2 = one < two
    @is_lt2
  end
  def is_ge
    return @is_ge unless @is_ge.nil?
    @is_ge = two >= ack2
    @is_ge
  end
  def hi_val
    return @hi_val unless @hi_val.nil?
    @hi_val = [144, 67].pack('C*')
    @hi_val
  end
  def is_ne
    return @is_ne unless @is_ne.nil?
    @is_ne = two != ack
    @is_ne
  end
  def is_lt
    return @is_lt unless @is_lt.nil?
    @is_lt = two < ack2
    @is_lt
  end
  attr_reader :one
  attr_reader :two
end
