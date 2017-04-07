// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_root.h"

#include <iostream>
#include <fstream>

nav_root_t::nav_root_t(kaitai::kstream *p_io, kaitai::kstruct *p_parent, nav_root_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_header = new header_obj_t(m__io, this, m__root);
    m_index = new index_obj_t(m__io, this, m__root);
}

nav_root_t::~nav_root_t() {
    delete m_header;
    delete m_index;
}

nav_root_t::header_obj_t::header_obj_t(kaitai::kstream *p_io, nav_root_t *p_parent, nav_root_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_qty_entries = m__io->read_u4le();
    m_filename_len = m__io->read_u4le();
}

nav_root_t::header_obj_t::~header_obj_t() {
}

nav_root_t::index_obj_t::index_obj_t(kaitai::kstream *p_io, nav_root_t *p_parent, nav_root_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_magic = m__io->read_bytes(4);
    int l_entries = _root()->header()->qty_entries();
    m_entries = new std::vector<entry_t*>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(new entry_t(m__io, this, m__root));
    }
}

nav_root_t::index_obj_t::~index_obj_t() {
    for (std::vector<entry_t*>::iterator it = m_entries->begin(); it != m_entries->end(); ++it) {
        delete *it;
    }
    delete m_entries;
}

nav_root_t::entry_t::entry_t(kaitai::kstream *p_io, nav_root_t::index_obj_t *p_parent, nav_root_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_filename = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->header()->filename_len()), std::string("UTF-8"));
}

nav_root_t::entry_t::~entry_t() {
}
