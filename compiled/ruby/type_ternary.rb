# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TypeTernary < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    if !(is_hack)
      _io_dif_wo_hack = @_io.substream(1)
      @dif_wo_hack = Dummy.new(_io_dif_wo_hack, self, @_root)
    end
    @_raw__raw_dif_with_hack = @_io.read_bytes(1)
    @_raw_dif_with_hack = Kaitai::Struct::Stream::process_xor_one(@_raw__raw_dif_with_hack, 3)
    _io__raw_dif_with_hack = Kaitai::Struct::Stream.new(@_raw_dif_with_hack)
    @dif_with_hack = Dummy.new(_io__raw_dif_with_hack, self, @_root)
    self
  end
  class Dummy < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_u1
      self
    end
    attr_reader :value
  end
  def is_hack
    return @is_hack unless @is_hack.nil?
    @is_hack = true
    @is_hack
  end
  def dif
    return @dif unless @dif.nil?
    @dif = (!(is_hack) ? dif_wo_hack : dif_with_hack)
    @dif
  end
  def dif_value
    return @dif_value unless @dif_value.nil?
    @dif_value = dif.value
    @dif_value
  end
  attr_reader :dif_wo_hack
  attr_reader :dif_with_hack
  attr_reader :_raw_dif_wo_hack
  attr_reader :_raw_dif_with_hack
  attr_reader :_raw__raw_dif_with_hack
end
