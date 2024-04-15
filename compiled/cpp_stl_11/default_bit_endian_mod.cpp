// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_bit_endian_mod.h"

default_bit_endian_mod_t::default_bit_endian_mod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_bit_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_main = nullptr;
    _read();
}

void default_bit_endian_mod_t::_read() {
    m_main = std::unique_ptr<main_obj_t>(new main_obj_t(m__io, this, m__root));
}

default_bit_endian_mod_t::~default_bit_endian_mod_t() {
    _clean_up();
}

void default_bit_endian_mod_t::_clean_up() {
}

default_bit_endian_mod_t::main_obj_t::main_obj_t(kaitai::kstream* p__io, default_bit_endian_mod_t* p__parent, default_bit_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_nest = nullptr;
    m_nest_be = nullptr;
    _read();
}

void default_bit_endian_mod_t::main_obj_t::_read() {
    m_one = m__io->read_bits_int_le(9);
    m_two = m__io->read_bits_int_le(15);
    m__io->align_to_byte();
    m_nest = std::unique_ptr<subnest_t>(new subnest_t(m__io, this, m__root));
    m_nest_be = std::unique_ptr<subnest_be_t>(new subnest_be_t(m__io, this, m__root));
}

default_bit_endian_mod_t::main_obj_t::~main_obj_t() {
    _clean_up();
}

void default_bit_endian_mod_t::main_obj_t::_clean_up() {
}

default_bit_endian_mod_t::main_obj_t::subnest_t::subnest_t(kaitai::kstream* p__io, default_bit_endian_mod_t::main_obj_t* p__parent, default_bit_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void default_bit_endian_mod_t::main_obj_t::subnest_t::_read() {
    m_two = m__io->read_bits_int_le(16);
}

default_bit_endian_mod_t::main_obj_t::subnest_t::~subnest_t() {
    _clean_up();
}

void default_bit_endian_mod_t::main_obj_t::subnest_t::_clean_up() {
}

default_bit_endian_mod_t::main_obj_t::subnest_be_t::subnest_be_t(kaitai::kstream* p__io, default_bit_endian_mod_t::main_obj_t* p__parent, default_bit_endian_mod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void default_bit_endian_mod_t::main_obj_t::subnest_be_t::_read() {
    m_two = m__io->read_bits_int_be(16);
}

default_bit_endian_mod_t::main_obj_t::subnest_be_t::~subnest_be_t() {
    _clean_up();
}

void default_bit_endian_mod_t::main_obj_t::subnest_be_t::_clean_up() {
}
