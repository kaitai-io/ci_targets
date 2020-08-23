// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "debug_array_user.h"

debug_array_user_t::debug_array_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, debug_array_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one_cat = nullptr;
    m_array_of_cats = nullptr;
}

void debug_array_user_t::_read() {
    m_one_cat = std::unique_ptr<cat_t>(new cat_t(m__io, this, m__root));
    m_one_cat->_read();
    int l_array_of_cats = 3;
    m_array_of_cats = std::unique_ptr<std::vector<std::unique_ptr<cat_t>>>(new std::vector<std::unique_ptr<cat_t>>());
    m_array_of_cats->reserve(l_array_of_cats);
    for (int i = 0; i < l_array_of_cats; i++) {
        std::unique_ptr<cat_t> _t_array_of_cats = std::unique_ptr<cat_t>(new cat_t(m__io, this, m__root));
        _t_array_of_cats->_read();
        m_array_of_cats->push_back(std::move(_t_array_of_cats));
    }
}

debug_array_user_t::~debug_array_user_t() {
    _clean_up();
}

void debug_array_user_t::_clean_up() {
}

debug_array_user_t::cat_t::cat_t(kaitai::kstream* p__io, debug_array_user_t* p__parent, debug_array_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
}

void debug_array_user_t::cat_t::_read() {
    m_meow = m__io->read_u1();
}

debug_array_user_t::cat_t::~cat_t() {
    _clean_up();
}

void debug_array_user_t::cat_t::_clean_up() {
}
