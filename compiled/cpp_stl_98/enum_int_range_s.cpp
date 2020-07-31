// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_int_range_s.h"

enum_int_range_s_t::enum_int_range_s_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_int_range_s_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        this->~enum_int_range_s_t();
        throw;
    }
}

void enum_int_range_s_t::_read() {
    m_f1 = static_cast<enum_int_range_s_t::constants_t>(m__io->read_s4be());
    m_f2 = static_cast<enum_int_range_s_t::constants_t>(m__io->read_s4be());
    m_f3 = static_cast<enum_int_range_s_t::constants_t>(m__io->read_s4be());
}

enum_int_range_s_t::~enum_int_range_s_t() {
}
