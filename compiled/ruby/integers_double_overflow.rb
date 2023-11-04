# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IntegersDoubleOverflow < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @signed_safe_min_be = @_io.read_s8be
    @signed_safe_min_le = @_io.read_s8le
    @signed_safe_max_be = @_io.read_s8be
    @signed_safe_max_le = @_io.read_s8le
    @signed_unsafe_neg_be = @_io.read_s8be
    @signed_unsafe_neg_le = @_io.read_s8le
    @signed_unsafe_pos_be = @_io.read_s8be
    @signed_unsafe_pos_le = @_io.read_s8le
    self
  end
  def unsigned_safe_max_be
    return @unsigned_safe_max_be unless @unsigned_safe_max_be.nil?
    _pos = @_io.pos
    @_io.seek(16)
    @unsigned_safe_max_be = @_io.read_u8be
    @_io.seek(_pos)
    @unsigned_safe_max_be
  end
  def unsigned_safe_max_le
    return @unsigned_safe_max_le unless @unsigned_safe_max_le.nil?
    _pos = @_io.pos
    @_io.seek(24)
    @unsigned_safe_max_le = @_io.read_u8le
    @_io.seek(_pos)
    @unsigned_safe_max_le
  end
  def unsigned_unsafe_pos_be
    return @unsigned_unsafe_pos_be unless @unsigned_unsafe_pos_be.nil?
    _pos = @_io.pos
    @_io.seek(48)
    @unsigned_unsafe_pos_be = @_io.read_u8be
    @_io.seek(_pos)
    @unsigned_unsafe_pos_be
  end
  def unsigned_unsafe_pos_le
    return @unsigned_unsafe_pos_le unless @unsigned_unsafe_pos_le.nil?
    _pos = @_io.pos
    @_io.seek(56)
    @unsigned_unsafe_pos_le = @_io.read_u8le
    @_io.seek(_pos)
    @unsigned_unsafe_pos_le
  end
  attr_reader :signed_safe_min_be
  attr_reader :signed_safe_min_le
  attr_reader :signed_safe_max_be
  attr_reader :signed_safe_max_le
  attr_reader :signed_unsafe_neg_be
  attr_reader :signed_unsafe_neg_le
  attr_reader :signed_unsafe_pos_be
  attr_reader :signed_unsafe_pos_le
end
