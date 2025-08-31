# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceInSized < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    _io_cont = @_io.substream(16)
    @cont = Wrapper.new(_io_cont, self, @_root)
    self
  end
  class Bar < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @seq_f = @_io.read_u1
      self
    end
    def inst
      return @inst unless @inst.nil?
      _pos = @_io.pos
      @_io.seek(4 + 1)
      @inst = @_io.read_bytes(3)
      @_io.seek(_pos)
      @inst
    end
    attr_reader :seq_f
  end
  class Baz < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @seq_f = @_io.read_u1
      self
    end
    def inst
      return @inst unless @inst.nil?
      _pos = @_io.pos
      @_io.seek(8 + 1)
      @inst = @_io.read_bytes(3)
      @_io.seek(_pos)
      @inst
    end
    attr_reader :seq_f
  end
  class Qux < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      if inst_invoked > 0
        @seq_f = @_io.read_u1
      end
      self
    end
    def inst_invoked
      return @inst_invoked unless @inst_invoked.nil?
      _pos = @_io.pos
      @_io.seek(_io.pos + 1)
      @inst_invoked = @_io.read_u1
      @_io.seek(_pos)
      @inst_invoked
    end
    def inst_unused_by_seq
      return @inst_unused_by_seq unless @inst_unused_by_seq.nil?
      _pos = @_io.pos
      @_io.seek(_io.pos + 1)
      @inst_unused_by_seq = @_io.read_bytes(2)
      @_io.seek(_pos)
      @inst_unused_by_seq
    end
    attr_reader :seq_f
  end
  class Wrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      _io_seq_sized = @_io.substream(4)
      @seq_sized = Qux.new(_io_seq_sized, self, @_root)
      @seq_in_stream = Bar.new(@_io, self, @_root)
      self
    end
    def inst_in_stream
      return @inst_in_stream unless @inst_in_stream.nil?
      _pos = @_io.pos
      @_io.seek(_io.pos + 3)
      @inst_in_stream = Baz.new(@_io, self, @_root)
      @_io.seek(_pos)
      @inst_in_stream
    end
    def inst_sized
      return @inst_sized unless @inst_sized.nil?
      _pos = @_io.pos
      @_io.seek(_io.pos + 7)
      _io_inst_sized = @_io.substream(4)
      @inst_sized = Qux.new(_io_inst_sized, self, @_root)
      @_io.seek(_pos)
      @inst_sized
    end
    attr_reader :seq_sized
    attr_reader :seq_in_stream
    attr_reader :_raw_seq_sized
    attr_reader :_raw_inst_sized
  end
  attr_reader :cont
  attr_reader :_raw_cont
end
