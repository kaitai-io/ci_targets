# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavRootRecursive < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @value = @_io.read_u1
    if value == 255
      @next = NavRootRecursive.new(@_io, self, @_root)
    end
    self
  end
  def root_value
    return @root_value unless @root_value.nil?
    @root_value = _root.value
    @root_value
  end
  attr_reader :value
  attr_reader :next
end
