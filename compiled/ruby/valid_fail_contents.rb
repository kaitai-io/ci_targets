# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidFailContents < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = @_io.read_bytes(2)
    raise Kaitai::Struct::ValidationNotEqualError.new([81, 65].pack('C*'), @foo, @_io, "/seq/0") if not @foo == [81, 65].pack('C*')
    self
  end
  attr_reader :foo
end
