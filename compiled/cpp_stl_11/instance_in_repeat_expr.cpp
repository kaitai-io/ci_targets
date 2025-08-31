// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_in_repeat_expr.h"

instance_in_repeat_expr_t::instance_in_repeat_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_in_repeat_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_chunks = nullptr;
    f_num_chunks = false;
    _read();
}

void instance_in_repeat_expr_t::_read() {
    m_chunks = std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>>(new std::vector<std::unique_ptr<chunk_t>>());
    const int l_chunks = num_chunks();
    for (int i = 0; i < l_chunks; i++) {
        m_chunks->push_back(std::move(std::unique_ptr<chunk_t>(new chunk_t(m__io, this, m__root))));
    }
}

instance_in_repeat_expr_t::~instance_in_repeat_expr_t() {
    _clean_up();
}

void instance_in_repeat_expr_t::_clean_up() {
    if (f_num_chunks) {
    }
}

instance_in_repeat_expr_t::chunk_t::chunk_t(kaitai::kstream* p__io, instance_in_repeat_expr_t* p__parent, instance_in_repeat_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void instance_in_repeat_expr_t::chunk_t::_read() {
    m_offset = m__io->read_u4le();
    m_len = m__io->read_u4le();
}

instance_in_repeat_expr_t::chunk_t::~chunk_t() {
    _clean_up();
}

void instance_in_repeat_expr_t::chunk_t::_clean_up() {
}

uint32_t instance_in_repeat_expr_t::num_chunks() {
    if (f_num_chunks)
        return m_num_chunks;
    f_num_chunks = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 16);
    m_num_chunks = m__io->read_u4le();
    m__io->seek(_pos);
    return m_num_chunks;
}
