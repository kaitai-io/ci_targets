// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_repeat_bytes.h"

process_repeat_bytes_t::process_repeat_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_bufs = nullptr;
    m__raw_bufs = nullptr;
    m__io_bufs = nullptr;
    _read();
}

void process_repeat_bytes_t::_read() {
    m__raw_bufs = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m_bufs = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_bufs = 2;
    for (int i = 0; i < l_bufs; i++) {
        m__raw_bufs->push_back(std::move(m__io->read_bytes(5)));
        m_bufs->push_back(std::move(kaitai::kstream::process_xor_one(m__raw_bufs->at(m__raw_bufs->size() - 1), 158)));
    }
}

process_repeat_bytes_t::~process_repeat_bytes_t() {
    _clean_up();
}

void process_repeat_bytes_t::_clean_up() {
}
