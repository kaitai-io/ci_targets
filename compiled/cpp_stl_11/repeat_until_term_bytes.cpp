// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_term_bytes.h"

repeat_until_term_bytes_t::repeat_until_term_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_term_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records1 = nullptr;
    m_records2 = nullptr;
    m_records3 = nullptr;
    _read();
}

void repeat_until_term_bytes_t::_read() {
    m_records1 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        std::string _;
        do {
            _ = m__io->read_bytes_term(170, false, true, true);
            m_records1->push_back(_);
            i++;
        } while (!(_.length() == 0));
    }
    m_records2 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        std::string _;
        do {
            _ = m__io->read_bytes_term(170, true, true, true);
            m_records2->push_back(_);
            i++;
        } while (!(_ != std::string("\xAA", 1)));
    }
    m_records3 = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        std::string _;
        do {
            _ = m__io->read_bytes_term(85, false, false, true);
            m_records3->push_back(_);
            i++;
        } while (!(_ == records1()->back()));
    }
}

repeat_until_term_bytes_t::~repeat_until_term_bytes_t() {
    _clean_up();
}

void repeat_until_term_bytes_t::_clean_up() {
}
