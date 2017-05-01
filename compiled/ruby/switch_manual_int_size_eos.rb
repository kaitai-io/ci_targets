# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchManualIntSizeEos < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @chunks = []
    while not @_io.eof?
      @chunks << Chunk.new(@_io, self, @_root)
    end
  end
  class Chunk < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @code = @_io.read_u1
      @size = @_io.read_u4le
      @_raw_body = @_io.read_bytes(size)
      io = Kaitai::Struct::Stream.new(@_raw_body)
      @body = ChunkBody.new(io, self, @_root)
    end
    attr_reader :code
    attr_reader :size
    attr_reader :body
    attr_reader :_raw_body
  end
  class ChunkBody < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      case _parent.code
      when 17
        @_raw_body = @_io.read_bytes_full
        io = Kaitai::Struct::Stream.new(@_raw_body)
        @body = ChunkMeta.new(io, self, @_root)
      when 34
        @_raw_body = @_io.read_bytes_full
        io = Kaitai::Struct::Stream.new(@_raw_body)
        @body = ChunkDir.new(io, self, @_root)
      else
        @body = @_io.read_bytes_full
      end
    end
    class ChunkMeta < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @title = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
        @author = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
      end
      attr_reader :title
      attr_reader :author
    end
    class ChunkDir < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @entries = []
        while not @_io.eof?
          @entries << (@_io.read_bytes(4)).force_encoding("UTF-8")
        end
      end
      attr_reader :entries
    end
    attr_reader :body
    attr_reader :_raw_body
  end
  attr_reader :chunks
end
