// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "ts_packet_header.h"



ts_packet_header_t::ts_packet_header_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, ts_packet_header_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void ts_packet_header_t::_read() {
    m_sync_byte = m__io->read_u1();
    m_transport_error_indicator = m__io->read_bits_int(1);
    m_payload_unit_start_indicator = m__io->read_bits_int(1);
    m_transport_priority = m__io->read_bits_int(1);
    m_pid = m__io->read_bits_int(13);
    m_transport_scrambling_control = m__io->read_bits_int(2);
    m_adaptation_field_control = static_cast<ts_packet_header_t::adaptation_field_control_enum_t>(m__io->read_bits_int(2));
    m_continuity_counter = m__io->read_bits_int(4);
    m__io->align_to_byte();
    m_ts_packet_remain = m__io->read_bytes(184);
}

ts_packet_header_t::~ts_packet_header_t() {
    // sync_byte: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // transport_error_indicator: BitsType1, isArray=false, hasRaw=false, hasIO=false
    // payload_unit_start_indicator: BitsType1, isArray=false, hasRaw=false, hasIO=false
    // transport_priority: BitsType1, isArray=false, hasRaw=false, hasIO=false
    // pid: BitsType(13), isArray=false, hasRaw=false, hasIO=false
    // transport_scrambling_control: BitsType(2), isArray=false, hasRaw=false, hasIO=false
    // adaptation_field_control: EnumType(List(adaptation_field_control_enum),BitsType(2)), isArray=false, hasRaw=false, hasIO=false
    // continuity_counter: BitsType(4), isArray=false, hasRaw=false, hasIO=false
    // ts_packet_remain: BytesLimitType(IntNum(184),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
}
