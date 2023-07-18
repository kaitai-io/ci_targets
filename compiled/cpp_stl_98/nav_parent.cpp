// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent.h"

nav_parent_t::nav_parent_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = 0;
    m_index = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_t::_read() {
    m_header = new header_obj_t(m__io, this, m__root);
    m_index = new index_obj_t(m__io, this, m__root);
}

nav_parent_t::~nav_parent_t() {
    _clean_up();
}

void nav_parent_t::_clean_up() {
    if (m_header) {
        delete m_header; m_header = 0;
    }
    if (m_index) {
        delete m_index; m_index = 0;
    }
}

nav_parent_t::header_obj_t::header_obj_t(kaitai::kstream* p__io, nav_parent_t* p__parent, nav_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_t::header_obj_t::_read() {
    m_qty_entries = m__io->read_u4le();
    m_filename_len = m__io->read_u4le();
}

nav_parent_t::header_obj_t::~header_obj_t() {
    _clean_up();
}

void nav_parent_t::header_obj_t::_clean_up() {
}

nav_parent_t::index_obj_t::index_obj_t(kaitai::kstream* p__io, nav_parent_t* p__parent, nav_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_entries = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_t::index_obj_t::_read() {
    m_magic = m__io->read_bytes(4);
    m_entries = new std::vector<entry_t*>();
    const int l_entries = _parent()->header()->qty_entries();
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(new entry_t(m__io, this, m__root));
    }
}

nav_parent_t::index_obj_t::~index_obj_t() {
    _clean_up();
}

void nav_parent_t::index_obj_t::_clean_up() {
    if (m_entries) {
        for (std::vector<entry_t*>::iterator it = m_entries->begin(); it != m_entries->end(); ++it) {
            delete *it;
        }
        delete m_entries; m_entries = 0;
    }
}

nav_parent_t::entry_t::entry_t(kaitai::kstream* p__io, nav_parent_t::index_obj_t* p__parent, nav_parent_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_t::entry_t::_read() {
    m_filename = kaitai::kstream::bytes_to_str(m__io->read_bytes(_parent()->_parent()->header()->filename_len()), "UTF-8");
}

nav_parent_t::entry_t::~entry_t() {
    _clean_up();
}

void nav_parent_t::entry_t::_clean_up() {
}
