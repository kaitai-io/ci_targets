// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "term_strz.h"

term_strz_t::term_strz_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, term_strz_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;

    try {
        _read();
    } catch(...) {
        this->~term_strz_t();
        throw;
    }
}

void term_strz_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_s2 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, false, true), std::string("UTF-8"));
    m_s3 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(64, true, true, true), std::string("UTF-8"));
}

term_strz_t::~term_strz_t() {
}
