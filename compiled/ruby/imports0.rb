# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Imports0 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @two = @_io.read_u1
    @hw = HelloWorld.new(@_io)
  end
  def hw_one
    return @hw_one unless @hw_one.nil?
    @hw_one = hw.one
    @hw_one
  end
  attr_reader :two
  attr_reader :hw
end
