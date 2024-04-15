// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_fancy.h"

enum_fancy_t::enum_fancy_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_fancy_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_fancy_t::_read() {
    m_pet_1 = static_cast<enum_fancy_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_fancy_t::animal_t>(m__io->read_u4le());
}

enum_fancy_t::~enum_fancy_t() {
    _clean_up();
}

void enum_fancy_t::_clean_up() {
}
