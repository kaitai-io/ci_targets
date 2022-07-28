// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_user_array.h"

instance_user_array_t::instance_user_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_user_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_user_entries = nullptr;
    m__raw_user_entries = nullptr;
    m__io__raw_user_entries = nullptr;
    f_user_entries = false;
    _read();
}

void instance_user_array_t::_read() {
    m_ofs = m__io->read_u4le();
    m_entry_size = m__io->read_u4le();
    m_qty_entries = m__io->read_u4le();
}

instance_user_array_t::~instance_user_array_t() {
    _clean_up();
}

void instance_user_array_t::_clean_up() {
    if (f_user_entries && !n_user_entries) {
    }
}

instance_user_array_t::entry_t::entry_t(kaitai::kstream* p__io, instance_user_array_t* p__parent, instance_user_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void instance_user_array_t::entry_t::_read() {
    m_word1 = m__io->read_u2le();
    m_word2 = m__io->read_u2le();
}

instance_user_array_t::entry_t::~entry_t() {
    _clean_up();
}

void instance_user_array_t::entry_t::_clean_up() {
}

std::vector<std::unique_ptr<instance_user_array_t::entry_t>>* instance_user_array_t::user_entries() {
    if (f_user_entries)
        return m_user_entries.get();
    n_user_entries = true;
    if (ofs() > 0) {
        n_user_entries = false;
        std::streampos _pos = m__io->pos();
        m__io->seek(ofs());
        m__raw_user_entries = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
        m__io__raw_user_entries = std::unique_ptr<std::vector<std::unique_ptr<kaitai::kstream>>>(new std::vector<std::unique_ptr<kaitai::kstream>>());
        m_user_entries = std::unique_ptr<std::vector<std::unique_ptr<entry_t>>>(new std::vector<std::unique_ptr<entry_t>>());
        const int l_user_entries = qty_entries();
        for (int i = 0; i < l_user_entries; i++) {
            m__raw_user_entries = m__io->read_bytes(entry_size());
            m__io__raw_user_entries = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_user_entries));
            m_user_entries->push_back(std::move(std::unique_ptr<entry_t>(new entry_t(m__io__raw_user_entries.get(), this, m__root))));
        }
        m__io->seek(_pos);
        f_user_entries = true;
    }
    return m_user_entries.get();
}
