# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchManualIntSizeEos < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @chunks = []
    i = 0
    while not @_io.eof?
      @chunks << Chunk.new(@_io, self, @_root)
      i += 1
    end
    self
  end
  class Chunk < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @code = @_io.read_u1
      @size = @_io.read_u4le
      _io_body = @_io.substream(size)
      @body = ChunkBody.new(_io_body, self, @_root)
      self
    end
    attr_reader :code
    attr_reader :size
    attr_reader :body
    attr_reader :_raw_body
  end
  class ChunkBody < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      case _parent.code
      when 17
        @_raw_body = @_io.read_bytes_full
        _io__raw_body = Kaitai::Struct::Stream.new(@_raw_body)
        @body = ChunkMeta.new(_io__raw_body, self, @_root)
      when 34
        @_raw_body = @_io.read_bytes_full
        _io__raw_body = Kaitai::Struct::Stream.new(@_raw_body)
        @body = ChunkDir.new(_io__raw_body, self, @_root)
      else
        @body = @_io.read_bytes_full
      end
      self
    end
    class ChunkMeta < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @title = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
        @author = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
        self
      end
      attr_reader :title
      attr_reader :author
    end
    class ChunkDir < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @entries = []
        i = 0
        while not @_io.eof?
          @entries << (@_io.read_bytes(4)).force_encoding("UTF-8")
          i += 1
        end
        self
      end
      attr_reader :entries
    end
    attr_reader :body
    attr_reader :_raw_body
  end
  attr_reader :chunks
end
