// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent2.h"



nav_parent2_t::nav_parent2_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_tags = 0;
    _read();
}

void nav_parent2_t::_read() {
    m_ofs_tags = m__io->read_u4le();
    m_num_tags = m__io->read_u4le();
    int l_tags = num_tags();
    m_tags = new std::vector<tag_t*>();
    m_tags->reserve(l_tags);
    for (int i = 0; i < l_tags; i++) {
        m_tags->push_back(new tag_t(m__io, this, m__root));
    }
}

nav_parent2_t::~nav_parent2_t() {
    for (std::vector<tag_t*>::iterator it = m_tags->begin(); it != m_tags->end(); ++it) {
        delete *it;
    }
    delete m_tags;
}

nav_parent2_t::tag_t::tag_t(kaitai::kstream* p__io, nav_parent2_t* p__parent, nav_parent2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_tag_content = false;
    _read();
}

void nav_parent2_t::tag_t::_read() {
    m_name = kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("ASCII"));
    m_ofs = m__io->read_u4le();
    m_num_items = m__io->read_u4le();
}

nav_parent2_t::tag_t::~tag_t() {
    if (f_tag_content && !n_tag_content) {
        delete m_tag_content;
    }
}

nav_parent2_t::tag_t::tag_char_t::tag_char_t(kaitai::kstream* p__io, nav_parent2_t::tag_t* p__parent, nav_parent2_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void nav_parent2_t::tag_t::tag_char_t::_read() {
    m_content = kaitai::kstream::bytes_to_str(m__io->read_bytes(_parent()->num_items()), std::string("ASCII"));
}

nav_parent2_t::tag_t::tag_char_t::~tag_char_t() {
}

nav_parent2_t::tag_t::tag_char_t* nav_parent2_t::tag_t::tag_content() {
    if (f_tag_content)
        return m_tag_content;
    kaitai::kstream *io = _root()->_io();
    std::streampos _pos = io->pos();
    io->seek(ofs());
    n_tag_content = true;
    {
        std::string on = name();
        if (on == std::string("RAHC")) {
            n_tag_content = false;
            m_tag_content = new tag_char_t(io, this, m__root);
        }
    }
    io->seek(_pos);
    f_tag_content = true;
    return m_tag_content;
}
