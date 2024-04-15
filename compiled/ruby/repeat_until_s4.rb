# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilS4 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @entries = []
    i = 0
    begin
      _ = @_io.read_s4le
      @entries << _
      i += 1
    end until _ == -1
    @afterall = (@_io.read_bytes_term(0, false, true, true)).force_encoding("ASCII").encode('UTF-8')
    self
  end
  attr_reader :entries
  attr_reader :afterall
end
