// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "params_pass_struct.h"

params_pass_struct_t::params_pass_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_first = nullptr;
    m_one = nullptr;
    _read();
}

void params_pass_struct_t::_read() {
    m_first = std::unique_ptr<block_t>(new block_t(m__io, this, m__root));
    m_one = std::unique_ptr<struct_type_t>(new struct_type_t(first(), m__io, this, m__root));
}

params_pass_struct_t::~params_pass_struct_t() {
    _clean_up();
}

void params_pass_struct_t::_clean_up() {
}

params_pass_struct_t::block_t::block_t(kaitai::kstream* p__io, params_pass_struct_t* p__parent, params_pass_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void params_pass_struct_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_struct_t::block_t::~block_t() {
    _clean_up();
}

void params_pass_struct_t::block_t::_clean_up() {
}

params_pass_struct_t::struct_type_t::struct_type_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, params_pass_struct_t* p__parent, params_pass_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    m_bar = nullptr;
    _read();
}

void params_pass_struct_t::struct_type_t::_read() {
    m_bar = std::unique_ptr<baz_t>(new baz_t(foo(), m__io, this, m__root));
}

params_pass_struct_t::struct_type_t::~struct_type_t() {
    _clean_up();
}

void params_pass_struct_t::struct_type_t::_clean_up() {
}

params_pass_struct_t::struct_type_t::baz_t::baz_t(kaitai::kstruct* p_foo, kaitai::kstream* p__io, params_pass_struct_t::struct_type_t* p__parent, params_pass_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_foo = p_foo;
    _read();
}

void params_pass_struct_t::struct_type_t::baz_t::_read() {
    m_qux = m__io->read_u1();
}

params_pass_struct_t::struct_type_t::baz_t::~baz_t() {
    _clean_up();
}

void params_pass_struct_t::struct_type_t::baz_t::_clean_up() {
}
