# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrLiterals2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  def at_sign
    return @at_sign unless @at_sign.nil?
    @at_sign = "@foo"
    @at_sign
  end
  def dollar1
    return @dollar1 unless @dollar1.nil?
    @dollar1 = "$foo"
    @dollar1
  end
  def dollar2
    return @dollar2 unless @dollar2.nil?
    @dollar2 = "${foo}"
    @dollar2
  end
  def hash
    return @hash unless @hash.nil?
    @hash = "\#{foo}"
    @hash
  end
end
