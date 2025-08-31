// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_term_struct.h"

repeat_n_term_struct_t::repeat_n_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records1 = 0;
    m__raw_records1 = 0;
    m__io__raw_records1 = 0;
    m_records2 = 0;
    m__raw_records2 = 0;
    m__io__raw_records2 = 0;
    m_records3 = 0;
    m__raw_records3 = 0;
    m__io__raw_records3 = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_n_term_struct_t::_read() {
    m__raw_records1 = new std::vector<std::string>();
    m__io__raw_records1 = new std::vector<kaitai::kstream*>();
    m_records1 = new std::vector<bytes_wrapper_t*>();
    const int l_records1 = 2;
    for (int i = 0; i < l_records1; i++) {
        m__raw_records1->push_back(m__io->read_bytes_term(170, false, true, true));
        kaitai::kstream* io__raw_records1 = new kaitai::kstream(m__raw_records1->at(m__raw_records1->size() - 1));
        m__io__raw_records1->push_back(io__raw_records1);
        m_records1->push_back(new bytes_wrapper_t(io__raw_records1, this, m__root));
    }
    m__raw_records2 = new std::vector<std::string>();
    m__io__raw_records2 = new std::vector<kaitai::kstream*>();
    m_records2 = new std::vector<bytes_wrapper_t*>();
    const int l_records2 = 2;
    for (int i = 0; i < l_records2; i++) {
        m__raw_records2->push_back(m__io->read_bytes_term(170, true, true, true));
        kaitai::kstream* io__raw_records2 = new kaitai::kstream(m__raw_records2->at(m__raw_records2->size() - 1));
        m__io__raw_records2->push_back(io__raw_records2);
        m_records2->push_back(new bytes_wrapper_t(io__raw_records2, this, m__root));
    }
    m__raw_records3 = new std::vector<std::string>();
    m__io__raw_records3 = new std::vector<kaitai::kstream*>();
    m_records3 = new std::vector<bytes_wrapper_t*>();
    const int l_records3 = 2;
    for (int i = 0; i < l_records3; i++) {
        m__raw_records3->push_back(m__io->read_bytes_term(85, false, false, true));
        kaitai::kstream* io__raw_records3 = new kaitai::kstream(m__raw_records3->at(m__raw_records3->size() - 1));
        m__io__raw_records3->push_back(io__raw_records3);
        m_records3->push_back(new bytes_wrapper_t(io__raw_records3, this, m__root));
    }
}

repeat_n_term_struct_t::~repeat_n_term_struct_t() {
    _clean_up();
}

void repeat_n_term_struct_t::_clean_up() {
    if (m__raw_records1) {
        delete m__raw_records1; m__raw_records1 = 0;
    }
    if (m__io__raw_records1) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records1->begin(); it != m__io__raw_records1->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records1; m__io__raw_records1 = 0;
    }
    if (m_records1) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records1->begin(); it != m_records1->end(); ++it) {
            delete *it;
        }
        delete m_records1; m_records1 = 0;
    }
    if (m__raw_records2) {
        delete m__raw_records2; m__raw_records2 = 0;
    }
    if (m__io__raw_records2) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records2->begin(); it != m__io__raw_records2->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records2; m__io__raw_records2 = 0;
    }
    if (m_records2) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records2->begin(); it != m_records2->end(); ++it) {
            delete *it;
        }
        delete m_records2; m_records2 = 0;
    }
    if (m__raw_records3) {
        delete m__raw_records3; m__raw_records3 = 0;
    }
    if (m__io__raw_records3) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records3->begin(); it != m__io__raw_records3->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records3; m__io__raw_records3 = 0;
    }
    if (m_records3) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records3->begin(); it != m_records3->end(); ++it) {
            delete *it;
        }
        delete m_records3; m_records3 = 0;
    }
}

repeat_n_term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, repeat_n_term_struct_t* p__parent, repeat_n_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_n_term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

repeat_n_term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void repeat_n_term_struct_t::bytes_wrapper_t::_clean_up() {
}
