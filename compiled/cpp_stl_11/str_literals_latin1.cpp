// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_literals_latin1.h"

str_literals_latin1_t::str_literals_latin1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_literals_latin1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_parsed_eq_literal = false;
    _read();
}

void str_literals_latin1_t::_read() {
    m_len_parsed = m__io->read_u2le();
    m_parsed = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_parsed()), "UTF-8");
}

str_literals_latin1_t::~str_literals_latin1_t() {
    _clean_up();
}

void str_literals_latin1_t::_clean_up() {
}

bool str_literals_latin1_t::parsed_eq_literal() {
    if (f_parsed_eq_literal)
        return m_parsed_eq_literal;
    f_parsed_eq_literal = true;
    m_parsed_eq_literal = parsed() == std::string("\243");
    return m_parsed_eq_literal;
}
