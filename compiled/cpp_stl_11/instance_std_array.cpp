// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_std_array.h"

instance_std_array_t::instance_std_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_std_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_entries = nullptr;
    f_entries = false;
    _read();
}

void instance_std_array_t::_read() {
    m_ofs = m__io->read_u4le();
    m_entry_size = m__io->read_u4le();
    m_qty_entries = m__io->read_u4le();
}

instance_std_array_t::~instance_std_array_t() {
    _clean_up();
}

void instance_std_array_t::_clean_up() {
    if (f_entries) {
    }
}

std::vector<std::string>* instance_std_array_t::entries() {
    if (f_entries)
        return m_entries.get();
    f_entries = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(ofs());
    m_entries = std::unique_ptr<std::vector<std::string>>(new std::vector<std::string>());
    const int l_entries = qty_entries();
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(std::move(m__io->read_bytes(entry_size())));
    }
    m__io->seek(_pos);
    return m_entries.get();
}
