// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_coerce_bytes.h"

process_coerce_bytes_t::process_coerce_bytes_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_coerce_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_records = nullptr;
    _read();
}

void process_coerce_bytes_t::_read() {
    m_records = std::unique_ptr<std::vector<std::unique_ptr<record_t>>>(new std::vector<std::unique_ptr<record_t>>());
    const int l_records = 2;
    for (int i = 0; i < l_records; i++) {
        m_records->push_back(std::move(std::unique_ptr<record_t>(new record_t(m__io, this, m__root))));
    }
}

process_coerce_bytes_t::~process_coerce_bytes_t() {
    _clean_up();
}

void process_coerce_bytes_t::_clean_up() {
}

process_coerce_bytes_t::record_t::record_t(kaitai::kstream* p__io, process_coerce_bytes_t* p__parent, process_coerce_bytes_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__io_buf_proc = nullptr;
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
    _clean_up();
}

void process_coerce_bytes_t::record_t::_clean_up() {
    if (!n_buf_unproc) {
    }
    if (!n_buf_proc) {
    }
}

std::string process_coerce_bytes_t::record_t::buf() {
    if (f_buf)
        return m_buf;
    m_buf = ((flag() == 0) ? (buf_unproc()) : (buf_proc()));
    f_buf = true;
    return m_buf;
}
