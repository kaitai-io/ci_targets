// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_if_int_ops.h"

expr_if_int_ops_t::expr_if_int_ops_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_if_int_ops_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_items = nullptr;
    f_bytes_sub_key = false;
    f_items_sub_key = false;
    _read();
}

void expr_if_int_ops_t::_read() {
    n_key = true;
    if (true) {
        n_key = false;
        m_key = m__io->read_u8le();
    }
    m_skip = m__io->read_bytes(8);
    m__raw_bytes = m__io->read_bytes(8);
    m_bytes = kaitai::kstream::process_xor_one(m__raw_bytes, key());
    m_items = std::unique_ptr<std::vector<int8_t>>(new std::vector<int8_t>());
    const int l_items = 4;
    for (int i = 0; i < l_items; i++) {
        m_items->push_back(std::move(m__io->read_s1()));
    }
}

expr_if_int_ops_t::~expr_if_int_ops_t() {
    _clean_up();
}

void expr_if_int_ops_t::_clean_up() {
    if (!n_key) {
    }
}

uint8_t expr_if_int_ops_t::bytes_sub_key() {
    if (f_bytes_sub_key)
        return m_bytes_sub_key;
    f_bytes_sub_key = true;
    m_bytes_sub_key = bytes().at(key());
    return m_bytes_sub_key;
}

int8_t expr_if_int_ops_t::items_sub_key() {
    if (f_items_sub_key)
        return m_items_sub_key;
    f_items_sub_key = true;
    m_items_sub_key = items()->at(key());
    return m_items_sub_key;
}
