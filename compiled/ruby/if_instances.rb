# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IfInstances < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  def never_happens
    return @never_happens unless @never_happens.nil?
    if false
      _pos = @_io.pos
      @_io.seek(100500)
      @never_happens = @_io.read_u1
      @_io.seek(_pos)
    end
    @never_happens
  end
end
