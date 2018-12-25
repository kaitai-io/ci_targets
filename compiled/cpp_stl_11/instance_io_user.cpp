// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "instance_io_user.h"

#include <memory>

instance_io_user_t::instance_io_user_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_entries = nullptr;
    m_strings = nullptr;
    m__io__raw_strings = nullptr;
    _read();
}

void instance_io_user_t::_read() {
    m_qty_entries = m__io->read_u4le();
    int l_entries = qty_entries();
    m_entries = new std::vector<std::unique_ptr<entry_t>>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(std::move(std::unique_ptr<entry_t>(new entry_t(m__io, this, m__root))));
    }
    m__raw_strings = m__io->read_bytes_full();
    m__io__raw_strings = new kaitai::kstream(m__raw_strings);
    m_strings = std::unique_ptr<strings_obj_t>(new strings_obj_t(m__io__raw_strings, this, m__root));
}

instance_io_user_t::~instance_io_user_t() {
    delete m__io__raw_strings;
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
    io->seek(name_ofs());
    m_name = kaitai::kstream::bytes_to_str(io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    io->seek(_pos);
    f_name = true;
    return m_name;
}

instance_io_user_t::strings_obj_t::strings_obj_t(kaitai::kstream* p__io, instance_io_user_t* p__parent, instance_io_user_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_str = nullptr;
    _read();
}

void instance_io_user_t::strings_obj_t::_read() {
    m_str = new std::vector<std::string>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_str->push_back(std::move(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"))));
            i++;
        }
    }
}

instance_io_user_t::strings_obj_t::~strings_obj_t() {
}
