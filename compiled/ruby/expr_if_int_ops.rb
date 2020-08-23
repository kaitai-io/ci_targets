# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIfIntOps < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @skip = @_io.read_bytes(2)
    if true
      @it = @_io.read_s2le
    end
    if true
      @boxed = @_io.read_s2le
    end
    self
  end
  def is_eq_prim
    return @is_eq_prim unless @is_eq_prim.nil?
    @is_eq_prim = it == 16705
    @is_eq_prim
  end
  def is_eq_boxed
    return @is_eq_boxed unless @is_eq_boxed.nil?
    @is_eq_boxed = it == boxed
    @is_eq_boxed
  end
  attr_reader :skip
  attr_reader :it
  attr_reader :boxed
end
