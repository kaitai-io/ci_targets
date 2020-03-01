// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "io_local_var.h"

ioLocalVar_t::ioLocalVar_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, ioLocalVar_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m__io__raw_mess_up = nullptr;
    f_mess_up = false;
    _read();
}

void ioLocalVar_t::_read() {
    m_skip = m__io->read_bytes(20);
    n_always_null = true;
    if (static_cast<ioLocalVar_t::dummy_t*>(mess_up())->_io()->pos() < 0) {
        n_always_null = false;
        m_always_null = m__io->read_u1();
    }
    m_followup = m__io->read_u1();
}

ioLocalVar_t::~ioLocalVar_t() {
    if (!n_always_null) {
    }
    if (f_mess_up && !n_mess_up) {
        delete m__io__raw_mess_up;
    }
}

ioLocalVar_t::dummy_t::dummy_t(kaitai::kstream* p__io, ioLocalVar_t* p__parent, ioLocalVar_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void ioLocalVar_t::dummy_t::_read() {
}

ioLocalVar_t::dummy_t::~dummy_t() {
}

ioLocalVar_t::dummy_t* ioLocalVar_t::mess_up() {
    if (f_mess_up)
        return m_mess_up.get();
    kaitai::kstream *io = _root()->_io();
    std::streampos _pos = io->pos();
    io->seek(8);
    n_mess_up = true;
    switch (2) {
    case 1: {
        n_mess_up = false;
        m__raw_mess_up = io->read_bytes(2);
        m__io__raw_mess_up = new kaitai::kstream(m__raw_mess_up);
        m_mess_up = std::unique_ptr<dummy_t>(new dummy_t(m__io__raw_mess_up, this, m__root));
        break;
    }
    case 2: {
        n_mess_up = false;
        m__raw_mess_up = io->read_bytes(2);
        m__io__raw_mess_up = new kaitai::kstream(m__raw_mess_up);
        m_mess_up = std::unique_ptr<dummy_t>(new dummy_t(m__io__raw_mess_up, this, m__root));
        break;
    }
    default: {
        m__raw_mess_up = io->read_bytes(2);
        break;
    }
    }
    io->seek(_pos);
    f_mess_up = true;
    return m_mess_up.get();
}
