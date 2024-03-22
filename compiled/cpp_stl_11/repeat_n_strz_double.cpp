// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_strz_double.h"

repeat_n_strz_double_t::repeat_n_strz_double_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_n_strz_double_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_lines1 = nullptr;
    m_lines2 = nullptr;
    _read();
}

void repeat_n_strz_double_t::_read() {
    m_qty = m__io->read_u4le();
    m_lines1 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_lines1 = qty() / 2;
    for (int i = 0; i < l_lines1; i++) {
        m_lines1->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "UTF-8")));
    }
    m_lines2 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_lines2 = qty() / 2;
    for (int i = 0; i < l_lines2; i++) {
        m_lines2->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "UTF-8")));
    }
}

repeat_n_strz_double_t::~repeat_n_strz_double_t() {
    _clean_up();
}

void repeat_n_strz_double_t::_clean_up() {
}
