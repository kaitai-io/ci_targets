// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "repeat_until_sized.h"

repeatUntilSized_t::repeatUntilSized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, repeatUntilSized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_records = 0;
    m__raw_records = 0;
    m__io__raw_records = 0;
    _read();
}

void repeatUntilSized_t::_read() {
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

repeatUntilSized_t::~repeatUntilSized_t() {
    delete m__raw_records;
    for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_records->begin(); it != m__io__raw_records->end(); ++it) {
        delete *it;
    }
    delete m__io__raw_records;
    for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
        delete *it;
    }
    delete m_records;
}

repeatUntilSized_t::record_t::record_t(kaitai::kstream* p__io, repeatUntilSized_t* p__parent, repeatUntilSized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void repeatUntilSized_t::record_t::_read() {
    m_marker = m__io->read_u1();
    m_body = m__io->read_u4le();
}

repeatUntilSized_t::record_t::~record_t() {
}
