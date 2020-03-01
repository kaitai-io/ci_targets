// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_root.h"

navRoot_t::navRoot_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navRoot_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = 0;
    m_index = 0;
    _read();
}

void navRoot_t::_read() {
    m_header = new headerObj_t(m__io, this, m__root);
    m_index = new indexObj_t(m__io, this, m__root);
}

navRoot_t::~navRoot_t() {
    delete m_header;
    delete m_index;
}

navRoot_t::headerObj_t::headerObj_t(kaitai::kstream* p__io, navRoot_t* p__parent, navRoot_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navRoot_t::headerObj_t::_read() {
    m_qty_entries = m__io->read_u4le();
    m_filename_len = m__io->read_u4le();
}

navRoot_t::headerObj_t::~headerObj_t() {
}

navRoot_t::indexObj_t::indexObj_t(kaitai::kstream* p__io, navRoot_t* p__parent, navRoot_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_entries = 0;
    _read();
}

void navRoot_t::indexObj_t::_read() {
    m_magic = m__io->read_bytes(4);
    int l_entries = _root()->header()->qty_entries();
    m_entries = new std::vector<entry_t*>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(new entry_t(m__io, this, m__root));
    }
}

navRoot_t::indexObj_t::~indexObj_t() {
    for (std::vector<entry_t*>::iterator it = m_entries->begin(); it != m_entries->end(); ++it) {
        delete *it;
    }
    delete m_entries;
}

navRoot_t::entry_t::entry_t(kaitai::kstream* p__io, navRoot_t::indexObj_t* p__parent, navRoot_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navRoot_t::entry_t::_read() {
    m_filename = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->header()->filename_len()), std::string("UTF-8"));
}

navRoot_t::entry_t::~entry_t() {
}
