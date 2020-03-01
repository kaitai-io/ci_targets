// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_1.h"

enum1_t::enum1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main = nullptr;
    _read();
}

void enum1_t::_read() {
    m_main = std::unique_ptr<mainObj_t>(new mainObj_t(m__io, this, m__root));
}

enum1_t::~enum1_t() {
}

enum1_t::mainObj_t::mainObj_t(kaitai::kstream* p__io, enum1_t* p__parent, enum1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_submain = nullptr;
    _read();
}

void enum1_t::mainObj_t::_read() {
    m_submain = std::unique_ptr<submainObj_t>(new submainObj_t(m__io, this, m__root));
}

enum1_t::mainObj_t::~mainObj_t() {
}

enum1_t::mainObj_t::submainObj_t::submainObj_t(kaitai::kstream* p__io, enum1_t::mainObj_t* p__parent, enum1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum1_t::mainObj_t::submainObj_t::_read() {
    m_pet_1 = static_cast<enum1_t::mainObj_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum1_t::mainObj_t::animal_t>(m__io->read_u4le());
}

enum1_t::mainObj_t::submainObj_t::~submainObj_t() {
}
