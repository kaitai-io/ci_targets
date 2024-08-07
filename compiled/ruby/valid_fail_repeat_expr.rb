# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailRepeatExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = []
    i = 0
    while not @_io.eof?
      @foo << @_io.read_bytes(4)
      _ = @foo[i]
      raise Kaitai::Struct::ValidationExprError.new(@foo[i], @_io, "/seq/0") if not _ != [0, 18, 52, 86].pack('C*')
      i += 1
    end
    self
  end
  attr_reader :foo
end
