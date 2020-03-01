// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "debug_array_user.h"

debugArrayUser_t::debugArrayUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debugArrayUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one_cat = 0;
    m_array_of_cats = 0;
}

void debugArrayUser_t::_read() {
    m_one_cat = new cat_t(m__io, this, m__root);
    m_one_cat->_read();
    int l_array_of_cats = 3;
    m_array_of_cats = new std::vector<cat_t*>();
    m_array_of_cats->reserve(l_array_of_cats);
    for (int i = 0; i < l_array_of_cats; i++) {
        cat_t* _t_array_of_cats = new cat_t(m__io, this, m__root);
        _t_array_of_cats->_read();
        m_array_of_cats->push_back(_t_array_of_cats);
    }
}

debugArrayUser_t::~debugArrayUser_t() {
    delete m_one_cat;
    for (std::vector<cat_t*>::iterator it = m_array_of_cats->begin(); it != m_array_of_cats->end(); ++it) {
        delete *it;
    }
    delete m_array_of_cats;
}

debugArrayUser_t::cat_t::cat_t(kaitai::kstream* p__io, debugArrayUser_t* p__parent, debugArrayUser_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debugArrayUser_t::cat_t::_read() {
    m_meow = m__io->read_u1();
}

debugArrayUser_t::cat_t::~cat_t() {
}
