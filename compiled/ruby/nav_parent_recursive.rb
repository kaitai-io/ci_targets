# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentRecursive < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @value = @_io.read_u1
    if value == 255
      @next = NavParentRecursive.new(@_io, self, @_root)
    end
    self
  end
  def parent_value
    return @parent_value unless @parent_value.nil?
    if value != 255
      @parent_value = _parent.value
    end
    @parent_value
  end
  attr_reader :value
  attr_reader :next
end
