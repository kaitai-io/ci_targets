// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_term_struct.h"

repeat_eos_term_struct_t::repeat_eos_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = nullptr;
    m__raw_records = nullptr;
    m__io__raw_records = nullptr;
    _read();
}

void repeat_eos_term_struct_t::_read() {
    m__raw_records = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    m__io__raw_records = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>>(new std::vector<std::unique_ptr<kaitai::kstream>>());
    m_records = std::unique_ptr<std::vector<std::unique_ptr<bytes_wrapper_t>>>(new std::vector<std::unique_ptr<bytes_wrapper_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m__raw_records->push_back(std::move(m__io->read_bytes_term(178, true, true, true)));
            kaitai::kstream* io__raw_records = new kaitai::kstream(m__raw_records->at(m__raw_records->size() - 1));
            m__io__raw_records->emplace_back(io__raw_records);
            m_records->push_back(std::move(std::unique_ptr<bytes_wrapper_t>(new bytes_wrapper_t(io__raw_records, this, m__root))));
            i++;
        }
    }
}

repeat_eos_term_struct_t::~repeat_eos_term_struct_t() {
    _clean_up();
}

void repeat_eos_term_struct_t::_clean_up() {
}

repeat_eos_term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, repeat_eos_term_struct_t* p__parent, repeat_eos_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void repeat_eos_term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

repeat_eos_term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void repeat_eos_term_struct_t::bytes_wrapper_t::_clean_up() {
}
