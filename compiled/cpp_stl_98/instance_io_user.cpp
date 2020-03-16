// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "instance_io_user.h"

instance_io_user_t::instance_io_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_t* /* p__root */) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_entries = 0;
    m_strings = 0;
    m__io__raw_strings = 0;
    _read();
}

void instance_io_user_t::_read() {
    m_qty_entries = m__io->read_u4le();
    size_t l_entries = qty_entries();
    m_entries = new std::vector<entry_t*>();
    m_entries->reserve(l_entries);
    for (size_t i = 0; i < l_entries; i++) {
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

instance_io_user_t::entry_t::entry_t(kaitai::kstream* p__io, instance_io_user_t* p__parent, instance_io_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_name = false;
    _read();
}

void instance_io_user_t::entry_t::_read() {
    m_name_ofs = m__io->read_u4le();
    m_value = m__io->read_u4le();
}

instance_io_user_t::entry_t::~entry_t() {
    if (f_name) {
    }
}

std::string instance_io_user_t::entry_t::name() {
    if (f_name)
        return m_name;
    kaitai::kstream *io = _root()->strings()->_io();
    std::streampos _pos = io->pos();
    io->seek(kaitai::to_signed(name_ofs()));
    m_name = kaitai::kstream::bytes_to_str(io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    io->seek(_pos);
    f_name = true;
    return m_name;
}

instance_io_user_t::strings_obj_t::strings_obj_t(kaitai::kstream* p__io, instance_io_user_t* p__parent, instance_io_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_str = 0;
    _read();
}

void instance_io_user_t::strings_obj_t::_read() {
    m_str = new std::vector<std::string>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_str->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
            i++;
        }
    }
}

instance_io_user_t::strings_obj_t::~strings_obj_t() {
    delete m_str;
}
