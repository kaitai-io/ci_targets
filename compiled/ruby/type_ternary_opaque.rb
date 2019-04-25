# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TypeTernaryOpaque < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    if !(is_hack)
      @_raw_dif_wo_hack = @_io.read_bytes(12)
      _io__raw_dif_wo_hack = Kaitai::Struct::Stream.new(@_raw_dif_wo_hack)
      @dif_wo_hack = TermStrz.new(_io__raw_dif_wo_hack)
    end
    if is_hack
      @_raw__raw_dif_with_hack = @_io.read_bytes(12)
      @_raw_dif_with_hack = Kaitai::Struct::Stream::process_xor_one(@_raw__raw_dif_with_hack, 3)
      _io__raw_dif_with_hack = Kaitai::Struct::Stream.new(@_raw_dif_with_hack)
      @dif_with_hack = TermStrz.new(_io__raw_dif_with_hack)
    end
    self
  end
  def is_hack
    return @is_hack unless @is_hack.nil?
    @is_hack = false
    @is_hack
  end
  def dif
    return @dif unless @dif.nil?
    @dif = (!(is_hack) ? dif_wo_hack : dif_with_hack)
    @dif
  end
  attr_reader :dif_wo_hack
  attr_reader :dif_with_hack
  attr_reader :_raw_dif_wo_hack
  attr_reader :_raw_dif_with_hack
  attr_reader :_raw__raw_dif_with_hack
end
