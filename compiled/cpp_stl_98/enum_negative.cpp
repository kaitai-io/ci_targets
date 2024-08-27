// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_negative.h"
std::set<enum_negative_t::constants_t> enum_negative_t::_build_values_constants_t() {
    std::set<enum_negative_t::constants_t> _t;
    _t.insert(enum_negative_t::CONSTANTS_NEGATIVE_ONE);
    _t.insert(enum_negative_t::CONSTANTS_POSITIVE_ONE);
    return _t;
}
const std::set<enum_negative_t::constants_t> enum_negative_t::_values_constants_t = enum_negative_t::_build_values_constants_t();
bool enum_negative_t::_is_defined_constants_t(enum_negative_t::constants_t v) {
    return enum_negative_t::_values_constants_t.find(v) != enum_negative_t::_values_constants_t.end();
}

enum_negative_t::enum_negative_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_negative_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_negative_t::_read() {
    m_f1 = static_cast<enum_negative_t::constants_t>(m__io->read_s1());
    m_f2 = static_cast<enum_negative_t::constants_t>(m__io->read_s1());
}

enum_negative_t::~enum_negative_t() {
    _clean_up();
}

void enum_negative_t::_clean_up() {
}
