# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class TermStrzUtf16V4 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    _io_s1 = @_io.substream(6)
    @s1 = S1Type.new(_io_s1, self, @_root)
    @skip_term1 = @_io.read_bytes(2)
    _io_s2 = @_io.substream(6)
    @s2 = S2Type.new(_io_s2, self, @_root)
    @skip_term2 = @_io.read_bytes(2)
    _io_s3 = @_io.substream(6)
    @s3 = S3Type.new(_io_s3, self, @_root)
    self
  end
  class S1Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (@_io.read_bytes_term_multi([0, 0].pack('C*'), false, true, false)).force_encoding("UTF-16LE").encode('UTF-8')
      self
    end
    attr_reader :value
  end
  class S2Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (@_io.read_bytes_term_multi([0, 0].pack('C*'), false, false, false)).force_encoding("UTF-16LE").encode('UTF-8')
      self
    end
    attr_reader :value
  end
  class S3Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (@_io.read_bytes_term_multi([0, 0].pack('C*'), true, true, false)).force_encoding("UTF-16LE").encode('UTF-8')
      self
    end
    attr_reader :value
  end
  attr_reader :s1
  attr_reader :skip_term1
  attr_reader :s2
  attr_reader :skip_term2
  attr_reader :s3
  attr_reader :_raw_s1
  attr_reader :_raw_s2
  attr_reader :_raw_s3
end
