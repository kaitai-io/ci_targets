// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "instance_std_array.h"

instance_std_array_t::instance_std_array_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_std_array_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_entries = 0;
    f_entries = false;
    _read();
}

void instance_std_array_t::_read() {
    m_ofs = m__io->read_u4le();
    m_entry_size = m__io->read_u4le();
    m_qty_entries = m__io->read_u4le();
}

instance_std_array_t::~instance_std_array_t() {
    if (f_entries) {
        delete m_entries;
    }
}

std::vector<std::string>* instance_std_array_t::entries() {
    if (f_entries)
        return m_entries;
    std::streampos _pos = m__io->pos();
    m__io->seek(ofs());
    int l_entries = qty_entries();
    m_entries = new std::vector<std::string>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(m__io->read_bytes(entry_size()));
    }
    m__io->seek(_pos);
    f_entries = true;
    return m_entries;
}
