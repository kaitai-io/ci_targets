# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilS4 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @entries = []
    begin
      _ = @_io.read_s4le
      @entries << _
    end until _ == -1
    @afterall = (@_io.read_bytes_term(0, false, true, true)).force_encoding("ASCII")
  end
  attr_reader :entries
  attr_reader :afterall
end
