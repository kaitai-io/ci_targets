// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_n_strz_double.h"

repeatNStrzDouble_t::repeatNStrzDouble_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatNStrzDouble_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_lines1 = nullptr;
    m_lines2 = nullptr;
    _read();
}

void repeatNStrzDouble_t::_read() {
    m_qty = m__io->read_u4le();
    int l_lines1 = (qty() / 2);
    m_lines1 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_lines1->reserve(l_lines1);
    for (int i = 0; i < l_lines1; i++) {
        m_lines1->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"))));
    }
    int l_lines2 = (qty() / 2);
    m_lines2 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_lines2->reserve(l_lines2);
    for (int i = 0; i < l_lines2; i++) {
        m_lines2->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"))));
    }
}

repeatNStrzDouble_t::~repeatNStrzDouble_t() {
}
