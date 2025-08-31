# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TermStruct2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_s1 = @_io.read_bytes_term(124, false, true, true)
    _io__raw_s1 = Kaitai::Struct::Stream.new(@_raw_s1)
    @s1 = BytesWrapper.new(_io__raw_s1, self, @_root)
    @_raw_s2 = @_io.read_bytes_term(124, true, true, true)
    _io__raw_s2 = Kaitai::Struct::Stream.new(@_raw_s2)
    @s2 = BytesWrapper.new(_io__raw_s2, self, @_root)
    @_raw_s3 = @_io.read_bytes_term(64, false, false, true)
    _io__raw_s3 = Kaitai::Struct::Stream.new(@_raw_s3)
    @s3 = BytesWrapper.new(_io__raw_s3, self, @_root)
    self
  end
  class BytesWrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_bytes_full
      self
    end
    attr_reader :value
  end
  attr_reader :s1
  attr_reader :s2
  attr_reader :s3
  attr_reader :_raw_s1
  attr_reader :_raw_s2
  attr_reader :_raw_s3
end
