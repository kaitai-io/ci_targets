# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchRepeatExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @code = @_io.read_u1
    @size = @_io.read_u4le
    @_raw_body = Array.new(1)
    @body = Array.new(1)
    (1).times { |i|
      case code
      when 17
        @_raw_body[i] = @_io.read_bytes(size)
        _io__raw_body = Kaitai::Struct::Stream.new(@_raw_body[i])
        @body[i] = One.new(_io__raw_body, self, @_root)
      when 34
        @_raw_body[i] = @_io.read_bytes(size)
        _io__raw_body = Kaitai::Struct::Stream.new(@_raw_body[i])
        @body[i] = Two.new(_io__raw_body, self, @_root)
      else
        @body[i] = @_io.read_bytes(size)
      end
    }
    self
  end
  class One < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
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
    def initialize(_io, _parent = nil, _root = self)
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
