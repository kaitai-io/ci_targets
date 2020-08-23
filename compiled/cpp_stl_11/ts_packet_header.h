#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

/**
 * describes the first 4 header bytes of a TS Packet header
 */

class ts_packet_header_t : public kaitai::kstruct {

public:

    enum adaptation_field_control_enum_t {
        ADAPTATION_FIELD_CONTROL_ENUM_RESERVED = 0,
        ADAPTATION_FIELD_CONTROL_ENUM_PAYLOAD_ONLY = 1,
        ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_ONLY = 2,
        ADAPTATION_FIELD_CONTROL_ENUM_ADAPTATION_FIELD_AND_PAYLOAD = 3
    };

    ts_packet_header_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, ts_packet_header_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~ts_packet_header_t();

private:
    uint8_t m_sync_byte;
    bool m_transport_error_indicator;
    bool m_payload_unit_start_indicator;
    bool m_transport_priority;
    uint64_t m_pid;
    uint64_t m_transport_scrambling_control;
    adaptation_field_control_enum_t m_adaptation_field_control;
    uint64_t m_continuity_counter;
    std::string m_ts_packet_remain;
    ts_packet_header_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint8_t sync_byte() const { return m_sync_byte; }
    bool transport_error_indicator() const { return m_transport_error_indicator; }
    bool payload_unit_start_indicator() const { return m_payload_unit_start_indicator; }
    bool transport_priority() const { return m_transport_priority; }
    uint64_t pid() const { return m_pid; }
    uint64_t transport_scrambling_control() const { return m_transport_scrambling_control; }
    adaptation_field_control_enum_t adaptation_field_control() const { return m_adaptation_field_control; }
    uint64_t continuity_counter() const { return m_continuity_counter; }
    std::string ts_packet_remain() const { return m_ts_packet_remain; }
    ts_packet_header_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
