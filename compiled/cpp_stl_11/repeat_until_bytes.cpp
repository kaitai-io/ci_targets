// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_until_bytes.h"

repeat_until_bytes_t::repeat_until_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = nullptr;
    _read();
}

void repeat_until_bytes_t::_read() {
    m_records = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    {
        int i = 0;
        std::string _;
        do {
            _ = m__io->read_bytes(5);
            m_records->push_back(_);
            i++;
        } while (!(_.at(0) == 170));
    }
}

repeat_until_bytes_t::~repeat_until_bytes_t() {
    _clean_up();
}

void repeat_until_bytes_t::_clean_up() {
}
