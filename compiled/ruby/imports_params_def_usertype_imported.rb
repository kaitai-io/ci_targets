# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require_relative 'hello_world'
require_relative 'params_def_usertype_imported'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ImportsParamsDefUsertypeImported < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @hw = HelloWorld.new(@_io)
    @two = ParamsDefUsertypeImported.new(@_io, hw)
    self
  end
  attr_reader :hw
  attr_reader :two
end
