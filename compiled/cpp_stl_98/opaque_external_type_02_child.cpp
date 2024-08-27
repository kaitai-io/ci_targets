// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_child.h"

opaque_external_type_02_child_t::opaque_external_type_02_child_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, opaque_external_type_02_child_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_s3 = 0;
    f_some_method = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_external_type_02_child_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), "UTF-8");
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, false, true), "UTF-8");
    m_s3 = new opaque_external_type_02_child_child_t(m__io, this, m__root);
}

opaque_external_type_02_child_t::~opaque_external_type_02_child_t() {
    _clean_up();
}

void opaque_external_type_02_child_t::_clean_up() {
    if (m_s3) {
        delete m_s3; m_s3 = 0;
    }
}

opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::opaque_external_type_02_child_child_t(kaitai::kstream* p__io, opaque_external_type_02_child_t* p__parent, opaque_external_type_02_child_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::_read() {
    n_s3 = true;
    if (_root()->some_method()) {
        n_s3 = false;
        m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, true, true, true), "UTF-8");
    }
}

opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::~opaque_external_type_02_child_child_t() {
    _clean_up();
}

void opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::_clean_up() {
    if (!n_s3) {
    }
}

bool opaque_external_type_02_child_t::some_method() {
    if (f_some_method)
        return m_some_method;
    f_some_method = true;
    m_some_method = true;
    return m_some_method;
}
