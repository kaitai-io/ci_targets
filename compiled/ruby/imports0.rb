# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require_relative 'hello_world'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Imports0 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @two = @_io.read_u1
    @hw = HelloWorld.new(@_io)
    self
  end
  def hw_one
    return @hw_one unless @hw_one.nil?
    @hw_one = hw.one
    @hw_one
  end
  attr_reader :two
  attr_reader :hw
end
