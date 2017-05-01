// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "opaque_external_type_02_child.h"

#include <iostream>
#include <fstream>

opaque_external_type_02_child_t::opaque_external_type_02_child_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, opaque_external_type_02_child_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_some_method = false;
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, false, true), std::string("UTF-8"));
    m_s3 = new opaque_external_type_02_child_child_t(m__io, this, m__root);
}

opaque_external_type_02_child_t::~opaque_external_type_02_child_t() {
    delete m_s3;
}

opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::opaque_external_type_02_child_child_t(kaitai::kstream *p_io, opaque_external_type_02_child_t* p_parent, opaque_external_type_02_child_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    n_s3 = true;
    if (_root()->some_method()) {
        n_s3 = false;
        m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, true, true, true), std::string("UTF-8"));
    }
}

opaque_external_type_02_child_t::opaque_external_type_02_child_child_t::~opaque_external_type_02_child_child_t() {
}

bool opaque_external_type_02_child_t::some_method() {
    if (f_some_method)
        return m_some_method;
    m_some_method = true;
    f_some_method = true;
    return m_some_method;
}
