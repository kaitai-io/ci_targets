# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class MultipleUse < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @t1 = Type1.new(@_io, self, @_root)
    @t2 = Type2.new(@_io, self, @_root)
    self
  end
  class Multi < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_s4le
      self
    end
    attr_reader :value
  end
  class Type1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @first_use = Multi.new(@_io, self, @_root)
      self
    end
    attr_reader :first_use
  end
  class Type2 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def second_use
      return @second_use unless @second_use.nil?
      _pos = @_io.pos
      @_io.seek(0)
      @second_use = Multi.new(@_io, self, @_root)
      @_io.seek(_pos)
      @second_use
    end
  end
  attr_reader :t1
  attr_reader :t2
end
