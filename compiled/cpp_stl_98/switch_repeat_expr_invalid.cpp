// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_repeat_expr_invalid.h"

switch_repeat_expr_invalid_t::switch_repeat_expr_invalid_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_body = 0;
    m__raw_body = 0;
    m__io__raw_body = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_repeat_expr_invalid_t::_read() {
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    m__raw_body = new std::vector<std::string>();
    m__io__raw_body = new std::vector<kaitai::kstream*>();
    m_body = new std::vector<kaitai::kstruct*>();
    const int l_body = 1;
    for (int i = 0; i < l_body; i++) {
        switch (code()) {
        case 255: {
            m__raw_body->push_back(m__io->read_bytes(size()));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->push_back(io__raw_body);
            m_body->push_back(new one_t(io__raw_body, this, m__root));
            break;
        }
        case 34: {
            m__raw_body->push_back(m__io->read_bytes(size()));
            kaitai::kstream* io__raw_body = new kaitai::kstream(m__raw_body->at(m__raw_body->size() - 1));
            m__io__raw_body->push_back(io__raw_body);
            m_body->push_back(new two_t(io__raw_body, this, m__root));
            break;
        }
        default: {
            m__raw_body->push_back(m__io->read_bytes(size()));
            break;
        }
        }
    }
}

switch_repeat_expr_invalid_t::~switch_repeat_expr_invalid_t() {
    _clean_up();
}

void switch_repeat_expr_invalid_t::_clean_up() {
    if (m__raw_body) {
        delete m__raw_body; m__raw_body = 0;
    }
    if (m__io__raw_body) {
        for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_body->begin(); it != m__io__raw_body->end(); ++it) {
            delete *it;
        }
        delete m__io__raw_body; m__io__raw_body = 0;
    }
    if (m_body) {
        for (std::vector<kaitai::kstruct*>::iterator it = m_body->begin(); it != m_body->end(); ++it) {
            delete *it;
        }
        delete m_body; m_body = 0;
    }
}

switch_repeat_expr_invalid_t::one_t::one_t(kaitai::kstream* p__io, switch_repeat_expr_invalid_t* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_repeat_expr_invalid_t::one_t::_read() {
    m_first = m__io->read_bytes_full();
}

switch_repeat_expr_invalid_t::one_t::~one_t() {
    _clean_up();
}

void switch_repeat_expr_invalid_t::one_t::_clean_up() {
}

switch_repeat_expr_invalid_t::two_t::two_t(kaitai::kstream* p__io, switch_repeat_expr_invalid_t* p__parent, switch_repeat_expr_invalid_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void switch_repeat_expr_invalid_t::two_t::_read() {
    m_second = m__io->read_bytes_full();
}

switch_repeat_expr_invalid_t::two_t::~two_t() {
    _clean_up();
}

void switch_repeat_expr_invalid_t::two_t::_clean_up() {
}
