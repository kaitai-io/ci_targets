// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_array_struct.h"

params_pass_array_struct_t::params_pass_array_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_array_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    m_two = nullptr;
    m_pass_structs = nullptr;
    f_one_two = false;
    _read();
}

void params_pass_array_struct_t::_read() {
    m_one = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
    m_two = std::unique_ptr<bar_t>(new bar_t(m__io, this, m__root));
    m_pass_structs = std::unique_ptr<struct_type_t>(new struct_type_t(one_two(), m__io, this, m__root));
}

params_pass_array_struct_t::~params_pass_array_struct_t() {
    _cleanUp();
}

void params_pass_array_struct_t::_cleanUp() {
}

params_pass_array_struct_t::foo_t::foo_t(kaitai::kstream* p__io, params_pass_array_struct_t* p__parent, params_pass_array_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_array_struct_t::foo_t::_read() {
    m_f = m__io->read_u1();
}

params_pass_array_struct_t::foo_t::~foo_t() {
    _cleanUp();
}

void params_pass_array_struct_t::foo_t::_cleanUp() {
}

params_pass_array_struct_t::bar_t::bar_t(kaitai::kstream* p__io, params_pass_array_struct_t* p__parent, params_pass_array_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_array_struct_t::bar_t::_read() {
    m_b = m__io->read_u1();
}

params_pass_array_struct_t::bar_t::~bar_t() {
    _cleanUp();
}

void params_pass_array_struct_t::bar_t::_cleanUp() {
}

params_pass_array_struct_t::struct_type_t::struct_type_t(std::vector<kaitai::kstruct*>* p_structs, kaitai::kstream* p__io, params_pass_array_struct_t* p__parent, params_pass_array_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_structs = p_structs;
    _read();
}

void params_pass_array_struct_t::struct_type_t::_read() {
}

params_pass_array_struct_t::struct_type_t::~struct_type_t() {
    _cleanUp();
}

void params_pass_array_struct_t::struct_type_t::_cleanUp() {
}

std::vector<kaitai::kstruct*>* params_pass_array_struct_t::one_two() {
    if (f_one_two)
        return m_one_two.get();
    m_one_two = std::unique_ptr<std::vector<kaitai::kstruct*>>(new std::vector<kaitai::kstruct*>{one(), two()});
    f_one_two = true;
    return m_one_two.get();
}
