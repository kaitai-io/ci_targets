// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "process_coerce_usertype1.h"

process_coerce_usertype1_t::process_coerce_usertype1_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_coerce_usertype1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_records = 0;

    try {
        _read();
    } catch(...) {
        this->~process_coerce_usertype1_t();
        throw;
    }
}

void process_coerce_usertype1_t::_read() {
    int l_records = 2;
    m_records = new std::vector<record_t*>();
    m_records->reserve(l_records);
    for (int i = 0; i < l_records; i++) {
        m_records->push_back(new record_t(m__io, this, m__root));
    }
}

process_coerce_usertype1_t::~process_coerce_usertype1_t() {
    for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
        delete *it;
    }
    delete m_records;
}

process_coerce_usertype1_t::record_t::record_t(kaitai::kstream* p__io, process_coerce_usertype1_t* p__parent, process_coerce_usertype1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_buf_unproc = 0;
    m__io__raw_buf_unproc = 0;
    m_buf_proc = 0;
    m__io__raw_buf_proc = 0;
    f_buf = false;

    try {
        _read();
    } catch(...) {
        this->~record_t();
        throw;
    }
}

void process_coerce_usertype1_t::record_t::_read() {
    m_flag = m__io->read_u1();
    n_buf_unproc = true;
    if (flag() == 0) {
        n_buf_unproc = false;
        m__raw_buf_unproc = m__io->read_bytes(4);
        m__io__raw_buf_unproc = new kaitai::kstream(m__raw_buf_unproc);
        m_buf_unproc = new foo_t(m__io__raw_buf_unproc, this, m__root);
    }
    n_buf_proc = true;
    if (flag() != 0) {
        n_buf_proc = false;
        m__raw__raw_buf_proc = m__io->read_bytes(4);
        m__raw_buf_proc = kaitai::kstream::process_xor_one(m__raw__raw_buf_proc, 170);
        m__io__raw_buf_proc = new kaitai::kstream(m__raw_buf_proc);
        m_buf_proc = new foo_t(m__io__raw_buf_proc, this, m__root);
    }
}

process_coerce_usertype1_t::record_t::~record_t() {
    if (!n_buf_unproc) {
        delete m__io__raw_buf_unproc;
        delete m_buf_unproc;
    }
    if (!n_buf_proc) {
        delete m__io__raw_buf_proc;
        delete m_buf_proc;
    }
}

process_coerce_usertype1_t::foo_t* process_coerce_usertype1_t::record_t::buf() {
    if (f_buf)
        return m_buf;
    m_buf = ((flag() == 0) ? (buf_unproc()) : (buf_proc()));
    f_buf = true;
    return m_buf;
}

process_coerce_usertype1_t::foo_t::foo_t(kaitai::kstream* p__io, process_coerce_usertype1_t::record_t* p__parent, process_coerce_usertype1_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~foo_t();
        throw;
    }
}

void process_coerce_usertype1_t::foo_t::_read() {
    m_value = m__io->read_u4le();
}

process_coerce_usertype1_t::foo_t::~foo_t() {
}
