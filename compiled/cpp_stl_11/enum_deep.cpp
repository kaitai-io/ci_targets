// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_deep.h"

enumDeep_t::enumDeep_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void enumDeep_t::_read() {
    m_pet_1 = static_cast<enumDeep_t::container1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enumDeep_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enumDeep_t::~enumDeep_t() {
}

enumDeep_t::container1_t::container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enumDeep_t::container1_t::_read() {
}

enumDeep_t::container1_t::~container1_t() {
}

enumDeep_t::container1_t::container2_t::container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enumDeep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enumDeep_t::container1_t::container2_t::_read() {
}

enumDeep_t::container1_t::container2_t::~container2_t() {
}
