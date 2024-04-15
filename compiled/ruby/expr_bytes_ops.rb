# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprBytesOps < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = @_io.read_bytes(3)
    self
  end
  def one_first
    return @one_first unless @one_first.nil?
    @one_first = one[0].ord
    @one_first
  end
  def one_last
    return @one_last unless @one_last.nil?
    @one_last = one[-1].ord
    @one_last
  end
  def one_max
    return @one_max unless @one_max.nil?
    @one_max = one.bytes.max
    @one_max
  end
  def one_mid
    return @one_mid unless @one_mid.nil?
    @one_mid = one[1].ord
    @one_mid
  end
  def one_min
    return @one_min unless @one_min.nil?
    @one_min = one.bytes.min
    @one_min
  end
  def one_size
    return @one_size unless @one_size.nil?
    @one_size = one.size
    @one_size
  end
  def two
    return @two unless @two.nil?
    @two = [65, 255, 75].pack('C*')
    @two
  end
  def two_first
    return @two_first unless @two_first.nil?
    @two_first = two[0].ord
    @two_first
  end
  def two_last
    return @two_last unless @two_last.nil?
    @two_last = two[-1].ord
    @two_last
  end
  def two_max
    return @two_max unless @two_max.nil?
    @two_max = two.bytes.max
    @two_max
  end
  def two_mid
    return @two_mid unless @two_mid.nil?
    @two_mid = two[1].ord
    @two_mid
  end
  def two_min
    return @two_min unless @two_min.nil?
    @two_min = two.bytes.min
    @two_min
  end
  def two_size
    return @two_size unless @two_size.nil?
    @two_size = two.size
    @two_size
  end
  attr_reader :one
end
