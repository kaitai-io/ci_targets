// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_endian_mod.h"

default_endian_mod_t::default_endian_mod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main = nullptr;
    _read();
}

void default_endian_mod_t::_read() {
    m_main = std::unique_ptr<main_obj_t>(new main_obj_t(m__io, this, m__root));
}

default_endian_mod_t::~default_endian_mod_t() {
    _clean_up();
}

void default_endian_mod_t::_clean_up() {
}

default_endian_mod_t::main_obj_t::main_obj_t(kaitai::kstream* p__io, default_endian_mod_t* p__parent, default_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_nest = nullptr;
    m_nest_be = nullptr;
    _read();
}

void default_endian_mod_t::main_obj_t::_read() {
    m_one = m__io->read_s4le();
    m_nest = std::unique_ptr<subnest_t>(new subnest_t(m__io, this, m__root));
    m_nest_be = std::unique_ptr<subnest_be_t>(new subnest_be_t(m__io, this, m__root));
}

default_endian_mod_t::main_obj_t::~main_obj_t() {
    _clean_up();
}

void default_endian_mod_t::main_obj_t::_clean_up() {
}

default_endian_mod_t::main_obj_t::subnest_t::subnest_t(kaitai::kstream* p__io, default_endian_mod_t::main_obj_t* p__parent, default_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void default_endian_mod_t::main_obj_t::subnest_t::_read() {
    m_two = m__io->read_s4le();
}

default_endian_mod_t::main_obj_t::subnest_t::~subnest_t() {
    _clean_up();
}

void default_endian_mod_t::main_obj_t::subnest_t::_clean_up() {
}

default_endian_mod_t::main_obj_t::subnest_be_t::subnest_be_t(kaitai::kstream* p__io, default_endian_mod_t::main_obj_t* p__parent, default_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void default_endian_mod_t::main_obj_t::subnest_be_t::_read() {
    m_two = m__io->read_s4be();
}

default_endian_mod_t::main_obj_t::subnest_be_t::~subnest_be_t() {
    _clean_up();
}

void default_endian_mod_t::main_obj_t::subnest_be_t::_clean_up() {
}
