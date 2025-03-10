// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_long_range_s.h"
const std::set<enum_long_range_s_t::constants_t> enum_long_range_s_t::_values_constants_t{
    enum_long_range_s_t::CONSTANTS_LONG_MIN,
    enum_long_range_s_t::CONSTANTS_INT_BELOW_MIN,
    enum_long_range_s_t::CONSTANTS_INT_MIN,
    enum_long_range_s_t::CONSTANTS_ZERO,
    enum_long_range_s_t::CONSTANTS_INT_MAX,
    enum_long_range_s_t::CONSTANTS_INT_OVER_MAX,
    enum_long_range_s_t::CONSTANTS_LONG_MAX,
};
bool enum_long_range_s_t::_is_defined_constants_t(enum_long_range_s_t::constants_t v) {
    return enum_long_range_s_t::_values_constants_t.find(v) != enum_long_range_s_t::_values_constants_t.end();
}

enum_long_range_s_t::enum_long_range_s_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_long_range_s_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
}

void enum_long_range_s_t::_read() {
    m_f1 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f2 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f3 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f4 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f5 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f6 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
    m_f7 = static_cast<enum_long_range_s_t::constants_t>(m__io->read_s8be());
}

enum_long_range_s_t::~enum_long_range_s_t() {
    _clean_up();
}

void enum_long_range_s_t::_clean_up() {
}
