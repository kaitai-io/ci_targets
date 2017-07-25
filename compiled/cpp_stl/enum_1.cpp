// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "enum_1.h"



enum_1_t::enum_1_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, enum_1_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void enum_1_t::_read() {
    m_main = new main_obj_t(m__io, this, m__root);
}

enum_1_t::~enum_1_t() {
    // main: UserTypeInstream(List(main_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_main;
}

enum_1_t::main_obj_t::main_obj_t(kaitai::kstream *p_io, enum_1_t* p_parent, enum_1_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void enum_1_t::main_obj_t::_read() {
    m_submain = new submain_obj_t(m__io, this, m__root);
}

enum_1_t::main_obj_t::~main_obj_t() {
    // submain: UserTypeInstream(List(submain_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_submain;
}

enum_1_t::main_obj_t::submain_obj_t::submain_obj_t(kaitai::kstream *p_io, enum_1_t::main_obj_t* p_parent, enum_1_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void enum_1_t::main_obj_t::submain_obj_t::_read() {
    m_pet_1 = static_cast<enum_1_t::main_obj_t::animal_t>(m__io->read_u4le());
    m_pet_2 = static_cast<enum_1_t::main_obj_t::animal_t>(m__io->read_u4le());
}

enum_1_t::main_obj_t::submain_obj_t::~submain_obj_t() {
    // pet_1: EnumType(List(animal),IntMultiType(false,Width4,Some(LittleEndian))), isArray=false, hasRaw=false, hasIO=false
    // pet_2: EnumType(List(animal),IntMultiType(false,Width4,Some(LittleEndian))), isArray=false, hasRaw=false, hasIO=false
}
