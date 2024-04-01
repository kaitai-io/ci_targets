// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_io_ternary.h"

expr_io_ternary_t::expr_io_ternary_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_io_ternary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_obj1 = nullptr;
    m__io__raw_obj1 = nullptr;
    m_obj2 = nullptr;
    m__io__raw_obj2 = nullptr;
    f_one_or_two_io = false;
    f_one_or_two_io_size1 = false;
    f_one_or_two_io_size2 = false;
    f_one_or_two_io_size_add_3 = false;
    f_one_or_two_obj = false;
    _read();
}

void expr_io_ternary_t::_read() {
    m_flag = m__io->read_u1();
    m__raw_obj1 = m__io->read_bytes(4);
    m__io__raw_obj1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_obj1));
    m_obj1 = std::unique_ptr<one_t>(new one_t(m__io__raw_obj1.get(), this, m__root));
    m__raw_obj2 = m__io->read_bytes(8);
    m__io__raw_obj2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_obj2));
    m_obj2 = std::unique_ptr<two_t>(new two_t(m__io__raw_obj2.get(), this, m__root));
}

expr_io_ternary_t::~expr_io_ternary_t() {
    _clean_up();
}

void expr_io_ternary_t::_clean_up() {
}

expr_io_ternary_t::one_t::one_t(kaitai::kstream* p__io, expr_io_ternary_t* p__parent, expr_io_ternary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void expr_io_ternary_t::one_t::_read() {
    m_one = m__io->read_u1();
}

expr_io_ternary_t::one_t::~one_t() {
    _clean_up();
}

void expr_io_ternary_t::one_t::_clean_up() {
}

expr_io_ternary_t::two_t::two_t(kaitai::kstream* p__io, expr_io_ternary_t* p__parent, expr_io_ternary_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void expr_io_ternary_t::two_t::_read() {
    m_two = m__io->read_u1();
}

expr_io_ternary_t::two_t::~two_t() {
    _clean_up();
}

void expr_io_ternary_t::two_t::_clean_up() {
}

kaitai::kstream* expr_io_ternary_t::one_or_two_io() {
    if (f_one_or_two_io)
        return m_one_or_two_io;
    m_one_or_two_io = ((flag() == 64) ? (obj1()) : (obj2()))->_io();
    f_one_or_two_io = true;
    return m_one_or_two_io;
}

int32_t expr_io_ternary_t::one_or_two_io_size1() {
    if (f_one_or_two_io_size1)
        return m_one_or_two_io_size1;
    m_one_or_two_io_size1 = ((flag() == 64) ? (obj1()) : (obj2()))->_io()->size();
    f_one_or_two_io_size1 = true;
    return m_one_or_two_io_size1;
}

int32_t expr_io_ternary_t::one_or_two_io_size2() {
    if (f_one_or_two_io_size2)
        return m_one_or_two_io_size2;
    m_one_or_two_io_size2 = one_or_two_io()->size();
    f_one_or_two_io_size2 = true;
    return m_one_or_two_io_size2;
}

int32_t expr_io_ternary_t::one_or_two_io_size_add_3() {
    if (f_one_or_two_io_size_add_3)
        return m_one_or_two_io_size_add_3;
    m_one_or_two_io_size_add_3 = ((flag() == 64) ? (obj1()) : (obj2()))->_io()->size() + 3;
    f_one_or_two_io_size_add_3 = true;
    return m_one_or_two_io_size_add_3;
}

kaitai::kstruct* expr_io_ternary_t::one_or_two_obj() {
    if (f_one_or_two_obj)
        return m_one_or_two_obj;
    m_one_or_two_obj = ((flag() == 64) ? (obj1()) : (obj2()));
    f_one_or_two_obj = true;
    return m_one_or_two_obj;
}
