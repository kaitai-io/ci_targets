# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require_relative 'hello_world'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsDefArrayUsertypeImported < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil, hws_param)
    super(_io, _parent, _root || self)
    @hws_param = hws_param
    _read
  end

  def _read
    self
  end
  def hw0_one
    return @hw0_one unless @hw0_one.nil?
    @hw0_one = hws_param[0].one
    @hw0_one
  end
  def hw1_one
    return @hw1_one unless @hw1_one.nil?
    @hw1_one = hws_param[1].one
    @hw1_one
  end
  attr_reader :hws_param
end
