// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_io_user.h"



instance_io_user_t::instance_io_user_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, instance_io_user_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void instance_io_user_t::_read() {
    m_qty_entries = m__io->read_u4le();
    int l_entries = qty_entries();
    m_entries = new std::vector<entry_t*>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(new entry_t(m__io, this, m__root));
    }
    m__raw_strings = m__io->read_bytes_full();
    m__io__raw_strings = new kaitai::kstream(m__raw_strings);
    m_strings = new strings_obj_t(m__io__raw_strings, this, m__root);
}

instance_io_user_t::~instance_io_user_t() {
    for (std::vector<entry_t*>::iterator it = m_entries->begin(); it != m_entries->end(); ++it) {
        delete *it;
    }
    delete m_entries;
    delete m__io__raw_strings;
    delete m_strings;
}

instance_io_user_t::entry_t::entry_t(kaitai::kstream *p_io, instance_io_user_t* p_parent, instance_io_user_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    f_name = false;
    _read();
}

void instance_io_user_t::entry_t::_read() {
    m_name_ofs = m__io->read_u4le();
    m_value = m__io->read_u4le();
}

instance_io_user_t::entry_t::~entry_t() {
}

std::string instance_io_user_t::entry_t::name() {
    if (f_name)
        return m_name;
    kaitai::kstream *io = _root()->strings()->_io();
    std::streampos _pos = io->pos();
    io->seek(name_ofs());
    m_name = kaitai::kstream::bytes_to_str(io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    io->seek(_pos);
    f_name = true;
    return m_name;
}

instance_io_user_t::strings_obj_t::strings_obj_t(kaitai::kstream *p_io, instance_io_user_t* p_parent, instance_io_user_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void instance_io_user_t::strings_obj_t::_read() {
    m_str = new std::vector<std::string>();
    while (!m__io->is_eof()) {
        m_str->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
    }
}

instance_io_user_t::strings_obj_t::~strings_obj_t() {
    delete m_str;
}
