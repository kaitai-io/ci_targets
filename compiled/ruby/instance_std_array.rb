# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceStdArray < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @ofs = @_io.read_u4le
    @entry_size = @_io.read_u4le
    @qty_entries = @_io.read_u4le
    self
  end
  def entries
    return @entries unless @entries.nil?
    _pos = @_io.pos
    @_io.seek(ofs)
    @entries = []
    (qty_entries).times { |i|
      @entries << @_io.read_bytes(entry_size)
    }
    @_io.seek(_pos)
    @entries
  end
  attr_reader :ofs
  attr_reader :entry_size
  attr_reader :qty_entries
end
