// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_eos_term_struct.h"

repeat_eos_term_struct_t::repeat_eos_term_struct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_eos_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_records = 0;
    m__raw_records = 0;
    m__io__raw_records = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_eos_term_struct_t::_read() {
    m__raw_records = new std::vector<std::string>();
    m__io__raw_records = new std::vector<kaitai::kstream*>();
    m_records = new std::vector<bytes_wrapper_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m__raw_records->push_back(m__io->read_bytes_term(178, true, true, true));
            kaitai::kstream* io__raw_records = new kaitai::kstream(m__raw_records->at(m__raw_records->size() - 1));
            m__io__raw_records->push_back(io__raw_records);
            m_records->push_back(new bytes_wrapper_t(io__raw_records, this, m__root));
            i++;
        }
    }
}

repeat_eos_term_struct_t::~repeat_eos_term_struct_t() {
    _clean_up();
}

void repeat_eos_term_struct_t::_clean_up() {
    if (m__raw_records) {
        delete m__raw_records; m__raw_records = 0;
    }
    if (m__io__raw_records) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records->begin(); it != m__io__raw_records->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_records; m__io__raw_records = 0;
    }
    if (m_records) {
        for (std::vector<bytes_wrapper_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
            delete *it;
        }
        delete m_records; m_records = 0;
    }
}

repeat_eos_term_struct_t::bytes_wrapper_t::bytes_wrapper_t(kaitai::kstream* p__io, repeat_eos_term_struct_t* p__parent, repeat_eos_term_struct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_eos_term_struct_t::bytes_wrapper_t::_read() {
    m_value = m__io->read_bytes_full();
}

repeat_eos_term_struct_t::bytes_wrapper_t::~bytes_wrapper_t() {
    _clean_up();
}

void repeat_eos_term_struct_t::bytes_wrapper_t::_clean_up() {
}
