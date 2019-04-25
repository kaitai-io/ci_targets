// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "enum_1.h"



enum_1_t::enum_1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, enum_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main = 0;
    _read();
}

void enum_1_t::_read() {
    m_main = new main_obj_t(m__io, this, m__root);
}

enum_1_t::~enum_1_t() {
    delete m_main;
}

enum_1_t::main_obj_t::main_obj_t(kaitai::kstream* p__io, enum_1_t* p__parent, enum_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_submain = 0;
    _read();
}

void enum_1_t::main_obj_t::_read() {
    m_submain = new submain_obj_t(m__io, this, m__root);
}

enum_1_t::main_obj_t::~main_obj_t() {
    delete m_submain;
}

enum_1_t::main_obj_t::submain_obj_t::submain_obj_t(kaitai::kstream* p__io, enum_1_t::main_obj_t* p__parent, enum_1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void enum_1_t::main_obj_t::submain_obj_t::_read() {
    m_pet_1 = static_cast<enum_1_t::main_obj_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_1_t::main_obj_t::animal_t>(m__io->read_u4le());
}

enum_1_t::main_obj_t::submain_obj_t::~submain_obj_t() {
}
