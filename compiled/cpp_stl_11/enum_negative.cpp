// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_negative.h"
const std::set<std::underlying_type<enum_negative_t::constants_t>::type> enum_negative_t::_values_constants_t{-1, 1};

enum_negative_t::enum_negative_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_negative_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    _read();
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
