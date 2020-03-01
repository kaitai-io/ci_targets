// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_circular_a.h"
#include "imports_circular_b.h"

importsCircularA_t::importsCircularA_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsCircularA_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_two = nullptr;
    _read();
}

void importsCircularA_t::_read() {
    m_code = m__io->read_u1();
    m_two = std::unique_ptr<importsCircularB_t>(new importsCircularB_t(m__io));
}

importsCircularA_t::~importsCircularA_t() {
}
