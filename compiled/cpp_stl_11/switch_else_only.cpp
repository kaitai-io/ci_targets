// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "switch_else_only.h"

switch_else_only_t::switch_else_only_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_else_only_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io__raw_struct_sized = nullptr;
    _read();
}

void switch_else_only_t::_read() {
    m_opcode = m__io->read_s1();
    switch (opcode()) {
    default: {
        m_prim_byte = m__io->read_s1();
        break;
    }
    }
    switch (opcode()) {
    default: {
        m_struct = std::unique_ptr<data_t>(new data_t(m__io, this, m__root));
        break;
    }
    }
    switch (opcode()) {
    default: {
        m__raw_struct_sized = m__io->read_bytes(kaitai::to_signed(4));
        m__io__raw_struct_sized = new kaitai::kstream(m__raw_struct_sized);
        m_struct_sized = std::unique_ptr<data_t>(new data_t(m__io__raw_struct_sized, this, m__root));
        break;
    }
    }
}

switch_else_only_t::~switch_else_only_t() {
    delete m__io__raw_struct_sized;
}

switch_else_only_t::data_t::data_t(kaitai::kstream* p__io, switch_else_only_t* p__parent, switch_else_only_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void switch_else_only_t::data_t::_read() {
    m_value = m__io->read_bytes(kaitai::to_signed(4));
}

switch_else_only_t::data_t::~data_t() {
}
