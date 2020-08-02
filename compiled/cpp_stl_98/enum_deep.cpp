// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_deep.h"

enum_deep_t::enum_deep_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::_read() {
    m_pet_1 = static_cast<enum_deep_t::container1_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_deep_t::container1_t::container2_t::animal_t>(m__io->read_u4le());
}

enum_deep_t::~enum_deep_t() {
    _clean_up();
}

void enum_deep_t::_clean_up() {
}

enum_deep_t::container1_t::container1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::container1_t::_read() {
}

enum_deep_t::container1_t::~container1_t() {
    _clean_up();
}

void enum_deep_t::container1_t::_clean_up() {
}

enum_deep_t::container1_t::container2_t::container2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_deep_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void enum_deep_t::container1_t::container2_t::_read() {
}

enum_deep_t::container1_t::container2_t::~container2_t() {
    _clean_up();
}

void enum_deep_t::container1_t::container2_t::_clean_up() {
}
