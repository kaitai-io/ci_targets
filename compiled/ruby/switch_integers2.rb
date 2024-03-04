# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchIntegers2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @code = @_io.read_u1
    case code
    when 1
      @len = @_io.read_u1
    when 2
      @len = @_io.read_u2le
    when 4
      @len = @_io.read_u4le
    when 8
      @len = @_io.read_u8le
    end
    @ham = @_io.read_bytes(len)
    if len > 3
      @padding = @_io.read_u1
    end
    self
  end
  def len_mod_str
    return @len_mod_str unless @len_mod_str.nil?
    @len_mod_str = ((len * 2) - 1).to_s
    @len_mod_str
  end
  attr_reader :code
  attr_reader :len
  attr_reader :ham
  attr_reader :padding
end
