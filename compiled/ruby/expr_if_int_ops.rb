# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIfIntOps < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    if true
      @key = @_io.read_u8le
    end
    @skip = @_io.read_bytes(8)
    @_raw_bytes = @_io.read_bytes(8)
    @bytes = Kaitai::Struct::Stream::process_xor_one(@_raw_bytes, key)
    @items = []
    (4).times { |i|
      @items << @_io.read_s1
    }
    self
  end
  def bytes_sub_key
    return @bytes_sub_key unless @bytes_sub_key.nil?
    @bytes_sub_key = bytes[key].ord
    @bytes_sub_key
  end
  def items_sub_key
    return @items_sub_key unless @items_sub_key.nil?
    @items_sub_key = items[key]
    @items_sub_key
  end
  attr_reader :key
  attr_reader :skip
  attr_reader :bytes
  attr_reader :items
  attr_reader :_raw_bytes
end
