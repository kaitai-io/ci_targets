# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailInst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    if inst >= 0
      @a = @_io.read_u1
    end
    self
  end
  def inst
    return @inst unless @inst.nil?
    _pos = @_io.pos
    @_io.seek(5)
    @inst = @_io.read_u1
    @_io.seek(_pos)
    @inst
  end
  attr_reader :a
end
