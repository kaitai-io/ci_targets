// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent_vs_value_inst.h"

nav_parent_vs_value_inst_t::nav_parent_vs_value_inst_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, nav_parent_vs_value_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_child = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_vs_value_inst_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), "UTF-8");
    m_child = new child_obj_t(m__io, this, m__root);
}

nav_parent_vs_value_inst_t::~nav_parent_vs_value_inst_t() {
    _clean_up();
}

void nav_parent_vs_value_inst_t::_clean_up() {
    if (m_child) {
        delete m_child; m_child = 0;
    }
}

nav_parent_vs_value_inst_t::child_obj_t::child_obj_t(kaitai::kstream* p__io, nav_parent_vs_value_inst_t* p__parent, nav_parent_vs_value_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_do_something = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void nav_parent_vs_value_inst_t::child_obj_t::_read() {
}

nav_parent_vs_value_inst_t::child_obj_t::~child_obj_t() {
    _clean_up();
}

void nav_parent_vs_value_inst_t::child_obj_t::_clean_up() {
}

bool nav_parent_vs_value_inst_t::child_obj_t::do_something() {
    if (f_do_something)
        return m_do_something;
    f_do_something = true;
    m_do_something = ((_parent()->s1() == std::string("foo")) ? (true) : (false));
    return m_do_something;
}
