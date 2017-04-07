# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TypeIntUnaryOp < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @value_s2 = @_io.read_s2le
    @value_s8 = @_io.read_s8le
  end
  def unary_s2
    return @unary_s2 unless @unary_s2.nil?
    @unary_s2 = -value_s2
    @unary_s2
  end
  def unary_s8
    return @unary_s8 unless @unary_s8.nil?
    @unary_s8 = -value_s8
    @unary_s8
  end
  attr_reader :value_s2
  attr_reader :value_s8
end
