// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_term_bytes.h"

repeat_n_term_bytes_t::repeat_n_term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_term_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records1 = nullptr;
    m_records2 = nullptr;
    m_records3 = nullptr;
    _read();
}

void repeat_n_term_bytes_t::_read() {
    m_records1 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_records1 = 2;
    for (int i = 0; i < l_records1; i++) {
        m_records1->push_back(std::move(m__io->read_bytes_term(170, false, true, true)));
    }
    m_records2 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_records2 = 2;
    for (int i = 0; i < l_records2; i++) {
        m_records2->push_back(std::move(m__io->read_bytes_term(170, true, true, true)));
    }
    m_records3 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_records3 = 2;
    for (int i = 0; i < l_records3; i++) {
        m_records3->push_back(std::move(m__io->read_bytes_term(85, false, false, true)));
    }
}

repeat_n_term_bytes_t::~repeat_n_term_bytes_t() {
    _clean_up();
}

void repeat_n_term_bytes_t::_clean_up() {
}
