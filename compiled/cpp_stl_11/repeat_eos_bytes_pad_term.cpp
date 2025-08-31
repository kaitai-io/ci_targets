// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_bytes_pad_term.h"

repeat_eos_bytes_pad_term_t::repeat_eos_bytes_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_bytes_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = nullptr;
    _read();
}

void repeat_eos_bytes_pad_term_t::_read() {
    m_records = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_records->push_back(std::move(kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(5), 170), 85, true)));
            i++;
        }
    }
}

repeat_eos_bytes_pad_term_t::~repeat_eos_bytes_pad_term_t() {
    _clean_up();
}

void repeat_eos_bytes_pad_term_t::_clean_up() {
}
