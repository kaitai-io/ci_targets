// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_long_range_u.h"
std::set<enum_long_range_u_t::constants_t> enum_long_range_u_t::_build_values_constants_t() {
    std::set<enum_long_range_u_t::constants_t> _t;
    _t.insert(enum_long_range_u_t::CONSTANTS_ZERO);
    _t.insert(enum_long_range_u_t::CONSTANTS_INT_MAX);
    _t.insert(enum_long_range_u_t::CONSTANTS_INT_OVER_MAX);
    _t.insert(enum_long_range_u_t::CONSTANTS_LONG_MAX);
    return _t;
}
const std::set<enum_long_range_u_t::constants_t> enum_long_range_u_t::_values_constants_t = enum_long_range_u_t::_build_values_constants_t();
bool enum_long_range_u_t::_is_defined_constants_t(enum_long_range_u_t::constants_t v) {
    return enum_long_range_u_t::_values_constants_t.find(v) != enum_long_range_u_t::_values_constants_t.end();
}

enum_long_range_u_t::enum_long_range_u_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_long_range_u_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_long_range_u_t::_read() {
    m_f1 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f2 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f3 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
    m_f4 = static_cast<enum_long_range_u_t::constants_t>(m__io->read_u8be());
}

enum_long_range_u_t::~enum_long_range_u_t() {
    _clean_up();
}

void enum_long_range_u_t::_clean_up() {
}
