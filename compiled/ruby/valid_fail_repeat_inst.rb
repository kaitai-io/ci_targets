# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailRepeatInst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    if inst.length == 0
      @a = @_io.read_bytes(0)
    end
    self
  end
  def inst
    return @inst unless @inst.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @inst = []
    i = 0
    while not @_io.eof?
      @inst << @_io.read_u4be
      raise Kaitai::Struct::ValidationNotEqualError.new(305419896, @inst[i], @_io, "/instances/inst") if not @inst[i] == 305419896
      i += 1
    end
    @_io.seek(_pos)
    @inst
  end
  attr_reader :a
end
