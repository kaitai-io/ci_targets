# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedTypesImport < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @a_cc = NestedTypes3::SubtypeA::SubtypeCc.new(@_io)
    @a_c_d = NestedTypes3::SubtypeA::SubtypeC::SubtypeD.new(@_io)
    @b = NestedTypes3::SubtypeB.new(@_io)
    self
  end
  attr_reader :a_cc
  attr_reader :a_c_d
  attr_reader :b
end
