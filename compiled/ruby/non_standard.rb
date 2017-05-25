# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NonStandard < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @foo = @_io.read_u1
    case foo
    when 42
      @bar = @_io.read_u2le
    when 43
      @bar = @_io.read_u4le
    end
  end
  def vi
    return @vi unless @vi.nil?
    @vi = foo
    @vi
  end
  def pi
    return @pi unless @pi.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @pi = @_io.read_u1
    @_io.seek(_pos)
    @pi
  end
  attr_reader :foo
  attr_reader :bar
end
