# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceUserArray < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @ofs = @_io.read_u4le
    @entry_size = @_io.read_u4le
    @qty_entries = @_io.read_u4le
    self
  end
  class Entry < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @word1 = @_io.read_u2le
      @word2 = @_io.read_u2le
      self
    end
    attr_reader :word1
    attr_reader :word2
  end
  def user_entries
    return @user_entries unless @user_entries.nil?
    if ofs > 0
      _pos = @_io.pos
      @_io.seek(ofs)
      @_raw_user_entries = []
      @user_entries = []
      (qty_entries).times { |i|
        _io_user_entries = @_io.substream(entry_size)
        @user_entries << Entry.new(_io_user_entries, self, @_root)
      }
      @_io.seek(_pos)
    end
    @user_entries
  end
  attr_reader :ofs
  attr_reader :entry_size
  attr_reader :qty_entries
  attr_reader :_raw_user_entries
end
