// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include <ts_packet_header.h>

ts_packet_header_t::ts_packet_header_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, ts_packet_header_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
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
}
