# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailRepeatAnyofInt < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = []
    i = 0
    while not @_io.eof?
      @foo << @_io.read_u1
      raise Kaitai::Struct::ValidationNotAnyOfError.new(@foo[i], @_io, "/seq/0") if not  ((@foo[i] == 0) || (@foo[i] == 1) || (@foo[i] == 65)) 
      i += 1
    end
    self
  end
  attr_reader :foo
end
