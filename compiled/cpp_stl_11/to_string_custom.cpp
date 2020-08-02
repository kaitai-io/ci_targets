// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "to_string_custom.h"

to_string_custom_t::to_string_custom_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, to_string_custom_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    _read();
}

void to_string_custom_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
}

to_string_custom_t::~to_string_custom_t() {
    _clean_up();
}

void to_string_custom_t::_clean_up() {
}
