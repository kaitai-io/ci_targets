// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nested_types_import.h"

nested_types_import_t::nested_types_import_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_import_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_a_cc = 0;
    m_a_c_d = 0;
    m_b = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nested_types_import_t::_read() {
    m_a_cc = new nested_types3_t::subtype_a_t::subtype_cc_t(m__io);
    m_a_c_d = new nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t(m__io);
    m_b = new nested_types3_t::subtype_b_t(m__io);
}

nested_types_import_t::~nested_types_import_t() {
    _clean_up();
}

void nested_types_import_t::_clean_up() {
    if (m_a_cc) {
        delete m_a_cc; m_a_cc = 0;
    }
    if (m_a_c_d) {
        delete m_a_c_d; m_a_c_d = 0;
    }
    if (m_b) {
        delete m_b; m_b = 0;
    }
}
