// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_int_range_u.h"
const std::set<enum_int_range_u_t::constants_t> enum_int_range_u_t::_values_constants_t{
    enum_int_range_u_t::CONSTANTS_ZERO,
    enum_int_range_u_t::CONSTANTS_INT_MAX,
};
bool enum_int_range_u_t::_is_defined_constants_t(enum_int_range_u_t::constants_t v) {
    return enum_int_range_u_t::_values_constants_t.find(v) != enum_int_range_u_t::_values_constants_t.end();
}

enum_int_range_u_t::enum_int_range_u_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_int_range_u_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void enum_int_range_u_t::_read() {
    m_f1 = static_cast<enum_int_range_u_t::constants_t>(m__io->read_u4be());
    m_f2 = static_cast<enum_int_range_u_t::constants_t>(m__io->read_u4be());
}

enum_int_range_u_t::~enum_int_range_u_t() {
    _clean_up();
}

void enum_int_range_u_t::_clean_up() {
}
