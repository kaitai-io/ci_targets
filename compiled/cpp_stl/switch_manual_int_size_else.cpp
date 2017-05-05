// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "switch_manual_int_size_else.h"



switch_manual_int_size_else_t::switch_manual_int_size_else_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, switch_manual_int_size_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    m_chunks = new std::vector<chunk_t*>();
    while (!m__io->is_eof()) {
        m_chunks->push_back(new chunk_t(m__io, this, m__root));
    }
}

switch_manual_int_size_else_t::~switch_manual_int_size_else_t() {
    for (std::vector<chunk_t*>::iterator it = m_chunks->begin(); it != m_chunks->end(); ++it) {
        delete *it;
    }
    delete m_chunks;
}

switch_manual_int_size_else_t::chunk_t::chunk_t(kaitai::kstream *p_io, switch_manual_int_size_else_t* p_parent, switch_manual_int_size_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_code = m__io->read_u1();
    m_size = m__io->read_u4le();
    switch (code()) {
    case 17:
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new chunk_meta_t(m__io__raw_body, this, m__root);
        break;
    case 34:
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new chunk_dir_t(m__io__raw_body, this, m__root);
        break;
    default:
        m__raw_body = m__io->read_bytes(size());
        m__io__raw_body = new kaitai::kstream(m__raw_body);
        m_body = new dummy_t(m__io__raw_body, this, m__root);
        break;
    }
}

switch_manual_int_size_else_t::chunk_t::~chunk_t() {
}

switch_manual_int_size_else_t::chunk_t::chunk_meta_t::chunk_meta_t(kaitai::kstream *p_io, switch_manual_int_size_else_t::chunk_t* p_parent, switch_manual_int_size_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_title = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    m_author = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
}

switch_manual_int_size_else_t::chunk_t::chunk_meta_t::~chunk_meta_t() {
}

switch_manual_int_size_else_t::chunk_t::chunk_dir_t::chunk_dir_t(kaitai::kstream *p_io, switch_manual_int_size_else_t::chunk_t* p_parent, switch_manual_int_size_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_entries = new std::vector<std::string>();
    while (!m__io->is_eof()) {
        m_entries->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("UTF-8")));
    }
}

switch_manual_int_size_else_t::chunk_t::chunk_dir_t::~chunk_dir_t() {
    delete m_entries;
}

switch_manual_int_size_else_t::chunk_t::dummy_t::dummy_t(kaitai::kstream *p_io, switch_manual_int_size_else_t::chunk_t* p_parent, switch_manual_int_size_else_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m_rest = m__io->read_bytes_full();
}

switch_manual_int_size_else_t::chunk_t::dummy_t::~dummy_t() {
}
