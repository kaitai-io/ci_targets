# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require_relative 'integers'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NameClashImportVsInst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  def integers
    return @integers unless @integers.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @integers = Integers.new(@_io)
    @_io.seek(_pos)
    @integers
  end
  def std
    return @std unless @std.nil?
    @std = 1 + 2
    @std
  end
end
