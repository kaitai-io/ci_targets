# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end


##
# describes the first 4 header bytes of a TS Packet header
class TsPacketHeader < Kaitai::Struct::Struct

  ADAPTATION_FIELD_CONTROL_ENUM = {
    0 => :adaptation_field_control_enum_reserved,
    1 => :adaptation_field_control_enum_payload_only,
    2 => :adaptation_field_control_enum_adaptation_field_only,
    3 => :adaptation_field_control_enum_adaptation_field_and_payload,
  }
  I__ADAPTATION_FIELD_CONTROL_ENUM = ADAPTATION_FIELD_CONTROL_ENUM.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @sync_byte = @_io.read_u1
    @transport_error_indicator = @_io.read_bits_int(1) != 0
    @payload_unit_start_indicator = @_io.read_bits_int(1) != 0
    @transport_priority = @_io.read_bits_int(1) != 0
    @pid = @_io.read_bits_int(13)
    @transport_scrambling_control = @_io.read_bits_int(2)
    @adaptation_field_control = Kaitai::Struct::Stream::resolve_enum(ADAPTATION_FIELD_CONTROL_ENUM, @_io.read_bits_int(2))
    @continuity_counter = @_io.read_bits_int(4)
    @_io.align_to_byte
    @ts_packet_remain = @_io.read_bytes(184)
  end
  attr_reader :sync_byte
  attr_reader :transport_error_indicator
  attr_reader :payload_unit_start_indicator
  attr_reader :transport_priority
  attr_reader :pid
  attr_reader :transport_scrambling_control
  attr_reader :adaptation_field_control
  attr_reader :continuity_counter
  attr_reader :ts_packet_remain
end
