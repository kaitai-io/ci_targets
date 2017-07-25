// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_endian_mod.h"



default_endian_mod_t::default_endian_mod_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, default_endian_mod_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void default_endian_mod_t::_read() {
    m_main = new main_obj_t(m__io, this, m__root);
}

default_endian_mod_t::~default_endian_mod_t() {
    // main: UserTypeInstream(List(main_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_main;
}

default_endian_mod_t::main_obj_t::main_obj_t(kaitai::kstream *p_io, default_endian_mod_t* p_parent, default_endian_mod_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void default_endian_mod_t::main_obj_t::_read() {
    m_one = m__io->read_s4le();
    m_nest = new subnest_t(m__io, this, m__root);
    m_nest_be = new subnest_be_t(m__io, this, m__root);
}

default_endian_mod_t::main_obj_t::~main_obj_t() {
    // one: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // nest: UserTypeInstream(List(subnest),None), isArray=false, hasRaw=false, hasIO=false
    delete m_nest;
    // nest_be: UserTypeInstream(List(subnest_be),None), isArray=false, hasRaw=false, hasIO=false
    delete m_nest_be;
}

default_endian_mod_t::main_obj_t::subnest_t::subnest_t(kaitai::kstream *p_io, default_endian_mod_t::main_obj_t* p_parent, default_endian_mod_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void default_endian_mod_t::main_obj_t::subnest_t::_read() {
    m_two = m__io->read_s4le();
}

default_endian_mod_t::main_obj_t::subnest_t::~subnest_t() {
    // two: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}

default_endian_mod_t::main_obj_t::subnest_be_t::subnest_be_t(kaitai::kstream *p_io, default_endian_mod_t::main_obj_t* p_parent, default_endian_mod_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void default_endian_mod_t::main_obj_t::subnest_be_t::_read() {
    m_two = m__io->read_s4be();
}

default_endian_mod_t::main_obj_t::subnest_be_t::~subnest_be_t() {
    // two: IntMultiType(true,Width4,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
}
