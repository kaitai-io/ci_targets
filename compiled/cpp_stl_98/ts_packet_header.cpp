// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "ts_packet_header.h"
std::set<ts_packet_header_t::adaptation_field_control_enum_t> ts_packet_header_t::_build_values_adaptation_field_control_enum_t() {
    std::set<ts_packet_header_t::adaptation_field_control_enum_t> _t;
    _t.insert(ts_packet_header_t::ADAPTATION_FIELD_CONTROL_ENUM_RESERVED);
    _t.insert(ts_packet_header_t::ADAPTATION_FIELD_CONTROL_ENUM_PAYLOAD_ONLY);
    _t.insert(ts_packet_header_t::ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_ONLY);
    _t.insert(ts_packet_header_t::ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_AND_PAYLOAD);
    return _t;
}
const std::set<ts_packet_header_t::adaptation_field_control_enum_t> ts_packet_header_t::_values_adaptation_field_control_enum_t = ts_packet_header_t::_build_values_adaptation_field_control_enum_t();
bool ts_packet_header_t::_is_defined_adaptation_field_control_enum_t(ts_packet_header_t::adaptation_field_control_enum_t v) {
    return ts_packet_header_t::_values_adaptation_field_control_enum_t.find(v) != ts_packet_header_t::_values_adaptation_field_control_enum_t.end();
}

ts_packet_header_t::ts_packet_header_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, ts_packet_header_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void ts_packet_header_t::_read() {
    m_sync_byte = m__io->read_u1();
    m_transport_error_indicator = m__io->read_bits_int_be(1);
    m_payload_unit_start_indicator = m__io->read_bits_int_be(1);
    m_transport_priority = m__io->read_bits_int_be(1);
    m_pid = m__io->read_bits_int_be(13);
    m_transport_scrambling_control = m__io->read_bits_int_be(2);
    m_adaptation_field_control = static_cast<ts_packet_header_t::adaptation_field_control_enum_t>(m__io->read_bits_int_be(2));
    m_continuity_counter = m__io->read_bits_int_be(4);
    m__io->align_to_byte();
    m_ts_packet_remain = m__io->read_bytes(184);
}

ts_packet_header_t::~ts_packet_header_t() {
    _clean_up();
}

void ts_packet_header_t::_clean_up() {
}
