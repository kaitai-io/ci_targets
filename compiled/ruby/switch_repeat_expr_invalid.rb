# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchRepeatExprInvalid < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @code = @_io.read_u1
    @size = @_io.read_u4le
    @_raw_body = []
    @body = []
    (1).times { |i|
      case code
      when 255
        _io_body = @_io.substream(size)
        @body << One.new(_io_body, self, @_root)
      when 34
        _io_body = @_io.substream(size)
        @body << Two.new(_io_body, self, @_root)
      else
        @body << @_io.read_bytes(size)
      end
    }
    self
  end
  class One < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @first = @_io.read_bytes_full
      self
    end
    attr_reader :first
  end
  class Two < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @second = @_io.read_bytes_full
      self
    end
    attr_reader :second
  end
  attr_reader :code
  attr_reader :size
  attr_reader :body
  attr_reader :_raw_body
end
