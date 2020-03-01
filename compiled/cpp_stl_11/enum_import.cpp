// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_import.h"

enumImport_t::enumImport_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumImport_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumImport_t::_read() {
    m_pet_1 = static_cast<enum0_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enumDeep_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enumImport_t::~enumImport_t() {
}
