# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprArray < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @aint = Array.new(4)
    (4).times { |i|
      @aint[i] = @_io.read_u4le
    }
    @afloat = Array.new(3)
    (3).times { |i|
      @afloat[i] = @_io.read_f8le
    }
    @astr = Array.new(3)
    (3).times { |i|
      @astr[i] = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
    }
    self
  end
  def aint_first
    return @aint_first unless @aint_first.nil?
    @aint_first = aint.first
    @aint_first
  end
  def afloat_size
    return @afloat_size unless @afloat_size.nil?
    @afloat_size = afloat.length
    @afloat_size
  end
  def astr_size
    return @astr_size unless @astr_size.nil?
    @astr_size = astr.length
    @astr_size
  end
  def aint_min
    return @aint_min unless @aint_min.nil?
    @aint_min = aint.min
    @aint_min
  end
  def afloat_min
    return @afloat_min unless @afloat_min.nil?
    @afloat_min = afloat.min
    @afloat_min
  end
  def aint_size
    return @aint_size unless @aint_size.nil?
    @aint_size = aint.length
    @aint_size
  end
  def aint_last
    return @aint_last unless @aint_last.nil?
    @aint_last = aint.last
    @aint_last
  end
  def afloat_last
    return @afloat_last unless @afloat_last.nil?
    @afloat_last = afloat.last
    @afloat_last
  end
  def astr_first
    return @astr_first unless @astr_first.nil?
    @astr_first = astr.first
    @astr_first
  end
  def astr_last
    return @astr_last unless @astr_last.nil?
    @astr_last = astr.last
    @astr_last
  end
  def aint_max
    return @aint_max unless @aint_max.nil?
    @aint_max = aint.max
    @aint_max
  end
  def afloat_first
    return @afloat_first unless @afloat_first.nil?
    @afloat_first = afloat.first
    @afloat_first
  end
  def astr_min
    return @astr_min unless @astr_min.nil?
    @astr_min = astr.min
    @astr_min
  end
  def astr_max
    return @astr_max unless @astr_max.nil?
    @astr_max = astr.max
    @astr_max
  end
  def afloat_max
    return @afloat_max unless @afloat_max.nil?
    @afloat_max = afloat.max
    @afloat_max
  end
  attr_reader :aint
  attr_reader :afloat
  attr_reader :astr
end
