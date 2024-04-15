// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "io_local_var.h"

io_local_var_t::io_local_var_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, io_local_var_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m__io__raw_mess_up = 0;
    f_mess_up = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void io_local_var_t::_read() {
    m_skip = m__io->read_bytes(20);
    n_always_null = true;
    if (static_cast<io_local_var_t::dummy_t*>(mess_up())->_io()->pos() < 0) {
        n_always_null = false;
        m_always_null = m__io->read_u1();
    }
    m_followup = m__io->read_u1();
}

io_local_var_t::~io_local_var_t() {
    _clean_up();
}

void io_local_var_t::_clean_up() {
    if (!n_always_null) {
    }
    if (f_mess_up && !n_mess_up) {
        if (m__io__raw_mess_up) {
            delete m__io__raw_mess_up; m__io__raw_mess_up = 0;
        }
        if (m_mess_up) {
            delete m_mess_up; m_mess_up = 0;
        }
    }
}

io_local_var_t::dummy_t::dummy_t(kaitai::kstream* p__io, io_local_var_t* p__parent, io_local_var_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void io_local_var_t::dummy_t::_read() {
}

io_local_var_t::dummy_t::~dummy_t() {
    _clean_up();
}

void io_local_var_t::dummy_t::_clean_up() {
}

io_local_var_t::dummy_t* io_local_var_t::mess_up() {
    if (f_mess_up)
        return m_mess_up;
    kaitai::kstream *io = _root()->_io();
    std::streampos _pos = io->pos();
    io->seek(8);
    n_mess_up = true;
    switch (2) {
    case 1: {
        n_mess_up = false;
        m__raw_mess_up = io->read_bytes(2);
        m__io__raw_mess_up = new kaitai::kstream(m__raw_mess_up);
        m_mess_up = new dummy_t(m__io__raw_mess_up, this, m__root);
        break;
    }
    case 2: {
        n_mess_up = false;
        m__raw_mess_up = io->read_bytes(2);
        m__io__raw_mess_up = new kaitai::kstream(m__raw_mess_up);
        m_mess_up = new dummy_t(m__io__raw_mess_up, this, m__root);
        break;
    }
    default: {
        m__raw_mess_up = io->read_bytes(2);
        break;
    }
    }
    io->seek(_pos);
    f_mess_up = true;
    return m_mess_up;
}
