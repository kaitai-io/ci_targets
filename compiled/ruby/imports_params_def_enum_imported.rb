# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require_relative 'params_def_enum_imported'
require_relative 'enum_import_seq'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ImportsParamsDefEnumImported < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = EnumImportSeq.new(@_io)
    @two = ParamsDefEnumImported.new(@_io, one.pet_1, one.pet_2)
    self
  end
  attr_reader :one
  attr_reader :two
end
