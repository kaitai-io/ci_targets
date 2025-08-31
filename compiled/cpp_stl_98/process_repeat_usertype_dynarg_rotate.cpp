// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "process_repeat_usertype_dynarg_rotate.h"

process_repeat_usertype_dynarg_rotate_t::process_repeat_usertype_dynarg_rotate_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, process_repeat_usertype_dynarg_rotate_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_blocks_rol = 0;
    m__raw_blocks_rol = 0;
    m__io__raw_blocks_rol = 0;
    m__raw__raw_blocks_rol = 0;
    m_blocks_ror = 0;
    m__raw_blocks_ror = 0;
    m__io__raw_blocks_ror = 0;
    m__raw__raw_blocks_ror = 0;
    m_blocks_b = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void process_repeat_usertype_dynarg_rotate_t::_read() {
    m__raw_blocks_rol = new std::vector<std::string>();
    m__io__raw_blocks_rol = new std::vector<kaitai::kstream*>();
    m__raw__raw_blocks_rol = new std::vector<std::string>();
    m_blocks_rol = new std::vector<block_t*>();
    const int l_blocks_rol = 2;
    for (int i = 0; i < l_blocks_rol; i++) {
        m__raw__raw_blocks_rol->push_back(m__io->read_bytes(3));
        m__raw_blocks_rol->push_back(kaitai::kstream::process_rotate_left(m__raw__raw_blocks_rol->at(m__raw__raw_blocks_rol->size() - 1), _io()->pos() - 4 * i));
        kaitai::kstream* io__raw_blocks_rol = new kaitai::kstream(m__raw_blocks_rol->at(m__raw_blocks_rol->size() - 1));
        m__io__raw_blocks_rol->push_back(io__raw_blocks_rol);
        m_blocks_rol->push_back(new block_t(io__raw_blocks_rol, this, m__root));
    }
    m__raw_blocks_ror = new std::vector<std::string>();
    m__io__raw_blocks_ror = new std::vector<kaitai::kstream*>();
    m__raw__raw_blocks_ror = new std::vector<std::string>();
    m_blocks_ror = new std::vector<block_t*>();
    const int l_blocks_ror = 3;
    for (int i = 0; i < l_blocks_ror; i++) {
        m__raw__raw_blocks_ror->push_back(m__io->read_bytes(3));
        m__raw_blocks_ror->push_back(kaitai::kstream::process_rotate_left(m__raw__raw_blocks_ror->at(m__raw__raw_blocks_ror->size() - 1), 8 - ((_io()->pos() - 6) - 4 * i)));
        kaitai::kstream* io__raw_blocks_ror = new kaitai::kstream(m__raw_blocks_ror->at(m__raw_blocks_ror->size() - 1));
        m__io__raw_blocks_ror->push_back(io__raw_blocks_ror);
        m_blocks_ror->push_back(new block_t(io__raw_blocks_ror, this, m__root));
    }
    m_blocks_b = new blocks_b_wrapper_t(m__io, this, m__root);
}

process_repeat_usertype_dynarg_rotate_t::~process_repeat_usertype_dynarg_rotate_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_rotate_t::_clean_up() {
    if (m__raw_blocks_rol) {
        delete m__raw_blocks_rol; m__raw_blocks_rol = 0;
    }
    if (m__io__raw_blocks_rol) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_blocks_rol->begin(); it != m__io__raw_blocks_rol->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_blocks_rol; m__io__raw_blocks_rol = 0;
    }
    if (m__raw__raw_blocks_rol) {
        delete m__raw__raw_blocks_rol; m__raw__raw_blocks_rol = 0;
    }
    if (m_blocks_rol) {
        for (std::vector<block_t*>::iterator it = m_blocks_rol->begin(); it != m_blocks_rol->end(); ++it) {
            delete *it;
        }
        delete m_blocks_rol; m_blocks_rol = 0;
    }
    if (m__raw_blocks_ror) {
        delete m__raw_blocks_ror; m__raw_blocks_ror = 0;
    }
    if (m__io__raw_blocks_ror) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_blocks_ror->begin(); it != m__io__raw_blocks_ror->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_blocks_ror; m__io__raw_blocks_ror = 0;
    }
    if (m__raw__raw_blocks_ror) {
        delete m__raw__raw_blocks_ror; m__raw__raw_blocks_ror = 0;
    }
    if (m_blocks_ror) {
        for (std::vector<block_t*>::iterator it = m_blocks_ror->begin(); it != m_blocks_ror->end(); ++it) {
            delete *it;
        }
        delete m_blocks_ror; m_blocks_ror = 0;
    }
    if (m_blocks_b) {
        delete m_blocks_b; m_blocks_b = 0;
    }
}

process_repeat_usertype_dynarg_rotate_t::block_t::block_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_rotate_t* p__parent, process_repeat_usertype_dynarg_rotate_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void process_repeat_usertype_dynarg_rotate_t::block_t::_read() {
    m_a = m__io->read_u2le();
}

process_repeat_usertype_dynarg_rotate_t::block_t::~block_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_rotate_t::block_t::_clean_up() {
}

process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_b_wrapper_t(kaitai::kstream* p__io, process_repeat_usertype_dynarg_rotate_t* p__parent, process_repeat_usertype_dynarg_rotate_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_blocks_rol_0_b = false;
    f_blocks_rol_1_b = false;
    f_blocks_ror_0_b = false;
    f_blocks_ror_1_b = false;
    f_blocks_ror_2_b = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::_read() {
    m_dummy = m__io->read_u1();
}

process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::~blocks_b_wrapper_t() {
    _clean_up();
}

void process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::_clean_up() {
    if (f_blocks_rol_0_b) {
    }
    if (f_blocks_rol_1_b) {
    }
    if (f_blocks_ror_0_b) {
    }
    if (f_blocks_ror_1_b) {
    }
    if (f_blocks_ror_2_b) {
    }
}

uint8_t process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_rol_0_b() {
    if (f_blocks_rol_0_b)
        return m_blocks_rol_0_b;
    f_blocks_rol_0_b = true;
    kaitai::kstream *io = _parent()->blocks_rol()->at(0)->_io();
    std::streampos _pos = io->pos();
    io->seek(2);
    m_blocks_rol_0_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_rol_0_b;
}

uint8_t process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_rol_1_b() {
    if (f_blocks_rol_1_b)
        return m_blocks_rol_1_b;
    f_blocks_rol_1_b = true;
    kaitai::kstream *io = _parent()->blocks_rol()->at(1)->_io();
    std::streampos _pos = io->pos();
    io->seek(2);
    m_blocks_rol_1_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_rol_1_b;
}

uint8_t process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_ror_0_b() {
    if (f_blocks_ror_0_b)
        return m_blocks_ror_0_b;
    f_blocks_ror_0_b = true;
    kaitai::kstream *io = _parent()->blocks_ror()->at(0)->_io();
    std::streampos _pos = io->pos();
    io->seek(2);
    m_blocks_ror_0_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_ror_0_b;
}

uint8_t process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_ror_1_b() {
    if (f_blocks_ror_1_b)
        return m_blocks_ror_1_b;
    f_blocks_ror_1_b = true;
    kaitai::kstream *io = _parent()->blocks_ror()->at(1)->_io();
    std::streampos _pos = io->pos();
    io->seek(2);
    m_blocks_ror_1_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_ror_1_b;
}

uint8_t process_repeat_usertype_dynarg_rotate_t::blocks_b_wrapper_t::blocks_ror_2_b() {
    if (f_blocks_ror_2_b)
        return m_blocks_ror_2_b;
    f_blocks_ror_2_b = true;
    kaitai::kstream *io = _parent()->blocks_ror()->at(2)->_io();
    std::streampos _pos = io->pos();
    io->seek(2);
    m_blocks_ror_2_b = io->read_u1();
    io->seek(_pos);
    return m_blocks_ror_2_b;
}
