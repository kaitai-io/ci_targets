# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidNotParsedIf < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    if false
      @not_parsed = @_io.read_u1
      raise Kaitai::Struct::ValidationNotEqualError.new(42, not_parsed, _io, "/seq/0") if not not_parsed == 42
    end
    if true
      @parsed = @_io.read_u1
      raise Kaitai::Struct::ValidationNotEqualError.new(80, parsed, _io, "/seq/1") if not parsed == 80
    end
    self
  end
  attr_reader :not_parsed
  attr_reader :parsed
end
