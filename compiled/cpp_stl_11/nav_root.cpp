// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_root.h"

nav_root_t::nav_root_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_root_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_header = nullptr;
    m_index = nullptr;
    _read();
}

void nav_root_t::_read() {
    m_header = std::unique_ptr<header_obj_t>(new header_obj_t(m__io, this, m__root));
    m_index = std::unique_ptr<index_obj_t>(new index_obj_t(m__io, this, m__root));
}

nav_root_t::~nav_root_t() {
    _cleanUp();
}

void nav_root_t::_cleanUp() {
}

nav_root_t::header_obj_t::header_obj_t(kaitai::kstream* p__io, nav_root_t* p__parent, nav_root_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_root_t::header_obj_t::_read() {
    m_qty_entries = m__io->read_u4le();
    m_filename_len = m__io->read_u4le();
}

nav_root_t::header_obj_t::~header_obj_t() {
    _cleanUp();
}

void nav_root_t::header_obj_t::_cleanUp() {
}

nav_root_t::index_obj_t::index_obj_t(kaitai::kstream* p__io, nav_root_t* p__parent, nav_root_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_entries = nullptr;
    _read();
}

void nav_root_t::index_obj_t::_read() {
    m_magic = m__io->read_bytes(4);
    int l_entries = _root()->header()->qty_entries();
    m_entries = std::unique_ptr<std::vector<std::unique_ptr<entry_t>>>(new std::vector<std::unique_ptr<entry_t>>());
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(std::move(std::unique_ptr<entry_t>(new entry_t(m__io, this, m__root))));
    }
}

nav_root_t::index_obj_t::~index_obj_t() {
    _cleanUp();
}

void nav_root_t::index_obj_t::_cleanUp() {
}

nav_root_t::entry_t::entry_t(kaitai::kstream* p__io, nav_root_t::index_obj_t* p__parent, nav_root_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_root_t::entry_t::_read() {
    m_filename = kaitai::kstream::bytes_to_str(m__io->read_bytes(_root()->header()->filename_len()), std::string("UTF-8"));
}

nav_root_t::entry_t::~entry_t() {
    _cleanUp();
}

void nav_root_t::entry_t::_cleanUp() {
}
