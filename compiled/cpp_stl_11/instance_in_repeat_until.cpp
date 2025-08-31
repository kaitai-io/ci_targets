// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_in_repeat_until.h"

instance_in_repeat_until_t::instance_in_repeat_until_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_in_repeat_until_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_entries = nullptr;
    f_until_val = false;
    _read();
}

void instance_in_repeat_until_t::_read() {
    m_entries = std::unique_ptr<std::vector<int16_t>>(new std::vector<int16_t>());
    {
        int i = 0;
        int16_t _;
        do {
            _ = m__io->read_s2le();
            m_entries->push_back(_);
            i++;
        } while (!(_ == until_val()));
    }
}

instance_in_repeat_until_t::~instance_in_repeat_until_t() {
    _clean_up();
}

void instance_in_repeat_until_t::_clean_up() {
    if (f_until_val) {
    }
}

int16_t instance_in_repeat_until_t::until_val() {
    if (f_until_val)
        return m_until_val;
    f_until_val = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 12);
    m_until_val = m__io->read_s2le();
    m__io->seek(_pos);
    return m_until_val;
}
