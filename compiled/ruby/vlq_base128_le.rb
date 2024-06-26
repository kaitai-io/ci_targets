# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end


##
# A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
# consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
# "least significant group first", i.e. in "little-endian" manner.
# 
# This particular encoding is specified and used in:
# 
# * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
#   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
# * Google Protocol Buffers, where it's called "Base 128 Varints".
#   <https://protobuf.dev/programming-guides/encoding/#varints>
# * Apache Lucene, where it's called "VInt"
#   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
# * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
#   top of it for signed ints
#   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
# 
# More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
# 
# This particular implementation supports serialized values to up 8 bytes long.
class VlqBase128Le < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @groups = []
    i = 0
    begin
      _ = Group.new(@_io, self, @_root)
      @groups << _
      i += 1
    end until !(_.has_next)
    self
  end

  ##
  # One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
  class Group < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @has_next = @_io.read_bits_int_be(1) != 0
      @value = @_io.read_bits_int_be(7)
      self
    end

    ##
    # If true, then we have more bytes to read
    attr_reader :has_next

    ##
    # The 7-bit (base128) numeric value chunk of this group
    attr_reader :value
  end
  def len
    return @len unless @len.nil?
    @len = groups.length
    @len
  end
  def sign_bit
    return @sign_bit unless @sign_bit.nil?
    @sign_bit = 1 << 7 * len - 1
    @sign_bit
  end

  ##
  # Resulting unsigned value as normal integer
  def value
    return @value unless @value.nil?
    @value = ((((((groups[0].value + (len >= 2 ? groups[1].value << 7 : 0)) + (len >= 3 ? groups[2].value << 14 : 0)) + (len >= 4 ? groups[3].value << 21 : 0)) + (len >= 5 ? groups[4].value << 28 : 0)) + (len >= 6 ? groups[5].value << 35 : 0)) + (len >= 7 ? groups[6].value << 42 : 0)) + (len >= 8 ? groups[7].value << 49 : 0)
    @value
  end

  ##
  # @see https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend Source
  def value_signed
    return @value_signed unless @value_signed.nil?
    @value_signed = value ^ sign_bit - sign_bit
    @value_signed
  end
  attr_reader :groups
end
