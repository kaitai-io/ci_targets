// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_term_bytes.h"

repeat_n_term_bytes_t::repeat_n_term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_term_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records1 = 0;
    m_records2 = 0;
    m_records3 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_n_term_bytes_t::_read() {
    m_records1 = new std::vector<std::string>();
    const int l_records1 = 2;
    for (int i = 0; i < l_records1; i++) {
        m_records1->push_back(m__io->read_bytes_term(170, false, true, true));
    }
    m_records2 = new std::vector<std::string>();
    const int l_records2 = 2;
    for (int i = 0; i < l_records2; i++) {
        m_records2->push_back(m__io->read_bytes_term(170, true, true, true));
    }
    m_records3 = new std::vector<std::string>();
    const int l_records3 = 2;
    for (int i = 0; i < l_records3; i++) {
        m_records3->push_back(m__io->read_bytes_term(85, false, false, true));
    }
}

repeat_n_term_bytes_t::~repeat_n_term_bytes_t() {
    _clean_up();
}

void repeat_n_term_bytes_t::_clean_up() {
    if (m_records1) {
        delete m_records1; m_records1 = 0;
    }
    if (m_records2) {
        delete m_records2; m_records2 = 0;
    }
    if (m_records3) {
        delete m_records3; m_records3 = 0;
    }
}
