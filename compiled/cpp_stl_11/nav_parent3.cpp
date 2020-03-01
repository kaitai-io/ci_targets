// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent3.h"

navParent3_t::navParent3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, navParent3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_tags = nullptr;
    f_tags = false;
    _read();
}

void navParent3_t::_read() {
    m_ofs_tags = m__io->read_u4le();
    m_num_tags = m__io->read_u4le();
}

navParent3_t::~navParent3_t() {
    if (f_tags) {
    }
}

navParent3_t::tag_t::tag_t(kaitai::kstream* p__io, navParent3_t* p__parent, navParent3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_tag_content = false;
    _read();
}

void navParent3_t::tag_t::_read() {
    m_name = kaitai::kstream::bytes_to_str(m__io->read_bytes(4), std::string("ASCII"));
    m_ofs = m__io->read_u4le();
    m_num_items = m__io->read_u4le();
}

navParent3_t::tag_t::~tag_t() {
    if (f_tag_content && !n_tag_content) {
    }
}

navParent3_t::tag_t::tagChar_t::tagChar_t(kaitai::kstream* p__io, navParent3_t::tag_t* p__parent, navParent3_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void navParent3_t::tag_t::tagChar_t::_read() {
    m_content = kaitai::kstream::bytes_to_str(m__io->read_bytes(_parent()->num_items()), std::string("ASCII"));
}

navParent3_t::tag_t::tagChar_t::~tagChar_t() {
}

navParent3_t::tag_t::tagChar_t* navParent3_t::tag_t::tag_content() {
    if (f_tag_content)
        return m_tag_content.get();
    kaitai::kstream *io = _root()->_io();
    std::streampos _pos = io->pos();
    io->seek(ofs());
    n_tag_content = true;
    {
        std::string on = name();
        if (on == std::string("RAHC")) {
            n_tag_content = false;
            m_tag_content = std::unique_ptr<tagChar_t>(new tagChar_t(io, this, m__root));
        }
    }
    io->seek(_pos);
    f_tag_content = true;
    return m_tag_content.get();
}

std::vector<std::unique_ptr<navParent3_t::tag_t>>* navParent3_t::tags() {
    if (f_tags)
        return m_tags.get();
    std::streampos _pos = m__io->pos();
    m__io->seek(ofs_tags());
    int l_tags = num_tags();
    m_tags = std::unique_ptr<std::vector<std::unique_ptr<tag_t>>>(new std::vector<std::unique_ptr<tag_t>>());
    m_tags->reserve(l_tags);
    for (int i = 0; i < l_tags; i++) {
        m_tags->push_back(std::move(std::unique_ptr<tag_t>(new tag_t(m__io, this, m__root))));
    }
    m__io->seek(_pos);
    f_tags = true;
    return m_tags.get();
}
