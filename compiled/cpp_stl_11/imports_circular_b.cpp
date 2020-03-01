// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "imports_circular_b.h"
#include "imports_circular_a.h"

importsCircularB_t::importsCircularB_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, importsCircularB_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_back_ref = nullptr;
    _read();
}

void importsCircularB_t::_read() {
    m_initial = m__io->read_u1();
    n_back_ref = true;
    if (initial() == 65) {
        n_back_ref = false;
        m_back_ref = std::unique_ptr<importsCircularA_t>(new importsCircularA_t(m__io));
    }
}

importsCircularB_t::~importsCircularB_t() {
    if (!n_back_ref) {
    }
}
