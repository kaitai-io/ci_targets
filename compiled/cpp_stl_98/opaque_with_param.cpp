// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_with_param.h"

opaque_with_param_t::opaque_with_param_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_with_param_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_one = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_with_param_t::_read() {
    m_one = new params_def_t(5, true, m__io);
}

opaque_with_param_t::~opaque_with_param_t() {
    _clean_up();
}

void opaque_with_param_t::_clean_up() {
    if (m_one) {
        delete m_one; m_one = 0;
    }
}
