// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_io.h"

params_pass_io_t::params_pass_io_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_first = 0;
    m__io__raw_first = 0;
    m_one = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_pass_io_t::_read() {
    m__raw_first = m__io->read_bytes(1);
    m__io__raw_first = new kaitai::kstream(m__raw_first);
    m_first = new block_t(m__io__raw_first, this, m__root);
    m_one = new param_type_t(((first()->foo() == 255) ? (first()->_io()) : (_root()->_io())), m__io, this, m__root);
}

params_pass_io_t::~params_pass_io_t() {
    _clean_up();
}

void params_pass_io_t::_clean_up() {
    if (m__io__raw_first) {
        delete m__io__raw_first; m__io__raw_first = 0;
    }
    if (m_first) {
        delete m_first; m_first = 0;
    }
    if (m_one) {
        delete m_one; m_one = 0;
    }
}

params_pass_io_t::block_t::block_t(kaitai::kstream* p__io, params_pass_io_t* p__parent, params_pass_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_pass_io_t::block_t::_read() {
    m_foo = m__io->read_u1();
}

params_pass_io_t::block_t::~block_t() {
    _clean_up();
}

void params_pass_io_t::block_t::_clean_up() {
}

params_pass_io_t::param_type_t::param_type_t(kaitai::kstream* p_arg_stream, kaitai::kstream* p__io, params_pass_io_t* p__parent, params_pass_io_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg_stream = p_arg_stream;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_pass_io_t::param_type_t::_read() {
    m_buf = m__io->read_bytes(arg_stream()->size());
}

params_pass_io_t::param_type_t::~param_type_t() {
    _clean_up();
}

void params_pass_io_t::param_type_t::_clean_up() {
}
