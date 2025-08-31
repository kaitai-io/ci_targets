// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_bytes_pad_term.h"

repeat_until_bytes_pad_term_t::repeat_until_bytes_pad_term_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_bytes_pad_term_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_until_bytes_pad_term_t::_read() {
    m_records = new std::vector<std::string>();
    {
        int i = 0;
        std::string _;
        do {
            _ = kaitai::kstream::bytes_terminate(kaitai::kstream::bytes_strip_right(m__io->read_bytes(5), 170), 85, true);
            m_records->push_back(_);
            i++;
        } while (!(_ == std::string("\xAA\x55", 2)));
    }
}

repeat_until_bytes_pad_term_t::~repeat_until_bytes_pad_term_t() {
    _clean_up();
}

void repeat_until_bytes_pad_term_t::_clean_up() {
    if (m_records) {
        delete m_records; m_records = 0;
    }
}
