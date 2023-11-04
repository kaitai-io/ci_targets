# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @foo = @_io.read_u1
    _ = foo
    raise Kaitai::Struct::ValidationExprError.new(foo, _io, "/seq/0") if not _ == 1
    @bar = @_io.read_s2le
    _ = bar
    raise Kaitai::Struct::ValidationExprError.new(bar, _io, "/seq/1") if not  ((_ < -190) || (_ > -190)) 
    self
  end
  attr_reader :foo
  attr_reader :bar
end
