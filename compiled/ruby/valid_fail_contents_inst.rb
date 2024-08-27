# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailContentsInst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    if foo.size == 0
      @a = @_io.read_bytes(0)
    end
    self
  end
  def foo
    return @foo unless @foo.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @foo = @_io.read_bytes(2)
    @_io.seek(_pos)
    @foo
  end
  attr_reader :a
end
