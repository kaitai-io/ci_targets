// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_sized.h"

repeat_until_sized_t::repeat_until_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeat_until_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
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

void repeat_until_sized_t::_read() {
    m__raw_records = new std::vector<std::string>();
    m__io__raw_records = new std::vector<kaitai::kstream*>();
    m_records = new std::vector<record_t*>();
    {
        int i = 0;
        record_t* _;
        do {
            std::string _buf = m__io->read_bytes(5);
            m__raw_records->push_back(_buf);
            kaitai::kstream* io__raw_records = new kaitai::kstream(_buf);
            m__io__raw_records->push_back(io__raw_records);
            _ = new record_t(io__raw_records, this, m__root);
            m_records->push_back(_);
            i++;
        } while (!(_->marker() == 170));
    }
}

repeat_until_sized_t::~repeat_until_sized_t() {
    _clean_up();
}

void repeat_until_sized_t::_clean_up() {
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
        for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
            delete *it;
        }
        delete m_records; m_records = 0;
    }
}

repeat_until_sized_t::record_t::record_t(kaitai::kstream* p__io, repeat_until_sized_t* p__parent, repeat_until_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void repeat_until_sized_t::record_t::_read() {
    m_marker = m__io->read_u1();
    m_body = m__io->read_u4le();
}

repeat_until_sized_t::record_t::~record_t() {
    _clean_up();
}

void repeat_until_sized_t::record_t::_clean_up() {
}
