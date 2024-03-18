// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nested_types_import.h"

nested_types_import_t::nested_types_import_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nested_types_import_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_a_cc = nullptr;
    m_a_c_d = nullptr;
    m_b = nullptr;
    _read();
}

void nested_types_import_t::_read() {
    m_a_cc = std::unique_ptr<nested_types3_t::subtype_a_t::subtype_cc_t>(new nested_types3_t::subtype_a_t::subtype_cc_t(m__io, this, m__root));
    m_a_c_d = std::unique_ptr<nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t>(new nested_types3_t::subtype_a_t::subtype_c_t::subtype_d_t(m__io, this, m__root));
    m_b = std::unique_ptr<nested_types3_t::subtype_b_t>(new nested_types3_t::subtype_b_t(m__io, this, m__root));
}

nested_types_import_t::~nested_types_import_t() {
    _clean_up();
}

void nested_types_import_t::_clean_up() {
}
