// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "instance_user_array.h"

instance_user_array_t::instance_user_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_user_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_user_entries = 0;
    m__raw_user_entries = 0;
    m__io__raw_user_entries = 0;
    f_user_entries = false;

    try {
        _read();
    } catch(...) {
        // this->~instance_user_array_t();
        throw;
    }
}

void instance_user_array_t::_read() {
    m_ofs = m__io->read_u4le();
    m_entry_size = m__io->read_u4le();
    m_qty_entries = m__io->read_u4le();
}

instance_user_array_t::~instance_user_array_t() {
    if (f_user_entries && !n_user_entries) {
        if (m__raw_user_entries) {
            delete m__raw_user_entries; m__raw_user_entries = 0;
        }
        if (m__io__raw_user_entries) {
            for (std::vector<kaitai::kstream*>::iterator it = m__io__raw_user_entries->begin(); it != m__io__raw_user_entries->end(); ++it) {
                delete *it;
            }
            delete m__io__raw_user_entries; m__io__raw_user_entries = 0;
        }
        if (m_user_entries) {
            for (std::vector<entry_t*>::iterator it = m_user_entries->begin(); it != m_user_entries->end(); ++it) {
                delete *it;
            }
            delete m_user_entries; m_user_entries = 0;
        }
    }
}

instance_user_array_t::entry_t::entry_t(kaitai::kstream* p__io, instance_user_array_t* p__parent, instance_user_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        // this->~entry_t();
        throw;
    }
}

void instance_user_array_t::entry_t::_read() {
    m_word1 = m__io->read_u2le();
    m_word2 = m__io->read_u2le();
}

instance_user_array_t::entry_t::~entry_t() {
}

std::vector<instance_user_array_t::entry_t*>* instance_user_array_t::user_entries() {
    if (f_user_entries)
        return m_user_entries;
    n_user_entries = true;
    if (ofs() > 0) {
        n_user_entries = false;
        std::streampos _pos = m__io->pos();
        m__io->seek(ofs());
        int l_user_entries = qty_entries();
        m__raw_user_entries = new std::vector<std::string>();
        m__raw_user_entries->reserve(l_user_entries);
        m__io__raw_user_entries = new std::vector<kaitai::kstream*>();
        m__io__raw_user_entries->reserve(l_user_entries);
        m_user_entries = new std::vector<entry_t*>();
        m_user_entries->reserve(l_user_entries);
        for (int i = 0; i < l_user_entries; i++) {
            m__raw_user_entries->push_back(m__io->read_bytes(entry_size()));
            kaitai::kstream* io__raw_user_entries = new kaitai::kstream(m__raw_user_entries->at(m__raw_user_entries->size() - 1));
            m__io__raw_user_entries->push_back(io__raw_user_entries);
            m_user_entries->push_back(new entry_t(io__raw_user_entries, this, m__root));
        }
        m__io->seek(_pos);
        f_user_entries = true;
    }
    return m_user_entries;
}
