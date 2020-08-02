// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_abs_abs.h"
#include "imported_and_abs.h"

imports_abs_abs_t::imports_abs_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imports_abs_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void imports_abs_abs_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<imported_and_abs_t>(new imported_and_abs_t(m__io));
}

imports_abs_abs_t::~imports_abs_abs_t() {
    _cleanUp();
}

void imports_abs_abs_t::_cleanUp() {
}
