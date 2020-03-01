// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imported_1.h"
#include "imported_2.h"

imported1_t::imported1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, imported1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void imported1_t::_read() {
    m_one = m__io->read_u1();
    m_two = std::unique_ptr<imported2_t>(new imported2_t(m__io));
}

imported1_t::~imported1_t() {
}
