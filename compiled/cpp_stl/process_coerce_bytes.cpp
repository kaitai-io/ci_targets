// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_coerce_bytes.h"



process_coerce_bytes_t::process_coerce_bytes_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, process_coerce_bytes_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void process_coerce_bytes_t::_read() {
    int l_records = 2;
    m_records = new std::vector<record_t*>();
    m_records->reserve(l_records);
    for (int i = 0; i < l_records; i++) {
        m_records->push_back(new record_t(m__io, this, m__root));
    }
}

process_coerce_bytes_t::~process_coerce_bytes_t() {
    for (std::vector<record_t*>::iterator it = m_records->begin(); it != m_records->end(); ++it) {
        delete *it;
    }
    delete m_records;
}

process_coerce_bytes_t::record_t::record_t(kaitai::kstream *p_io, process_coerce_bytes_t* p_parent, process_coerce_bytes_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    f_buf = false;
    _read();
}

void process_coerce_bytes_t::record_t::_read() {
    m_flag = m__io->read_u1();
    n_buf_unproc = true;
    if (flag() == 0) {
        n_buf_unproc = false;
        m_buf_unproc = m__io->read_bytes(4);
    }
    n_buf_proc = true;
    if (flag() != 0) {
        n_buf_proc = false;
        m__raw_buf_proc = m__io->read_bytes(4);
        m_buf_proc = kaitai::kstream::process_xor_one(m__raw_buf_proc, 170);
    }
}

process_coerce_bytes_t::record_t::~record_t() {
}

std::string process_coerce_bytes_t::record_t::buf() {
    if (f_buf)
        return m_buf;
    m_buf = ((flag() == 0) ? (buf_unproc()) : (buf_proc()));
    f_buf = true;
    return m_buf;
}
