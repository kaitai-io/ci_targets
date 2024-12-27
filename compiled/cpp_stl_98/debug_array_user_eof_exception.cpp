// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "debug_array_user_eof_exception.h"

debug_array_user_eof_exception_t::debug_array_user_eof_exception_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_array_user_eof_exception_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_one_cat = 0;
    m_array_of_cats = 0;
}

void debug_array_user_eof_exception_t::_read() {
    m_one_cat = new cat_t(m__io, this, m__root);
    m_one_cat->_read();
    m_array_of_cats = new std::vector<cat_t*>();
    const int l_array_of_cats = 3;
    for (int i = 0; i < l_array_of_cats; i++) {
        cat_t* _t_array_of_cats = new cat_t(m__io, this, m__root);
        try {
            _t_array_of_cats->_read();
        } catch(...) {
            m_array_of_cats->push_back(_t_array_of_cats);
            throw;
        }
        m_array_of_cats->push_back(_t_array_of_cats);
    }
}

debug_array_user_eof_exception_t::~debug_array_user_eof_exception_t() {
    _clean_up();
}

void debug_array_user_eof_exception_t::_clean_up() {
    if (m_one_cat) {
        delete m_one_cat; m_one_cat = 0;
    }
    if (m_array_of_cats) {
        for (std::vector<cat_t*>::iterator it = m_array_of_cats->begin(); it != m_array_of_cats->end(); ++it) {
            delete *it;
        }
        delete m_array_of_cats; m_array_of_cats = 0;
    }
}

debug_array_user_eof_exception_t::cat_t::cat_t(kaitai::kstream* p__io, debug_array_user_eof_exception_t* p__parent, debug_array_user_eof_exception_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debug_array_user_eof_exception_t::cat_t::_read() {
    m_meow = m__io->read_u1();
    m_chirp = m__io->read_u1();
}

debug_array_user_eof_exception_t::cat_t::~cat_t() {
    _clean_up();
}

void debug_array_user_eof_exception_t::cat_t::_clean_up() {
}
