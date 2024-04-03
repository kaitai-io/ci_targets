// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "imports_cast_to_imported2.h"

imports_cast_to_imported2_t::imports_cast_to_imported2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_cast_to_imported2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_hw = nullptr;
    m_two = nullptr;
    _read();
}

void imports_cast_to_imported2_t::_read() {
    m_hw = std::unique_ptr<hello_world_t>(new hello_world_t(m__io));
    m_two = std::unique_ptr<cast_to_imported2_t>(new cast_to_imported2_t(hw(), m__io));
}

imports_cast_to_imported2_t::~imports_cast_to_imported2_t() {
    _clean_up();
}

void imports_cast_to_imported2_t::_clean_up() {
}
