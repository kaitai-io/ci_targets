// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "nav_parent_vs_value_inst.h"

nav_parent_vs_value_inst_t::nav_parent_vs_value_inst_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent, nav_parent_vs_value_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_child = nullptr;
    _read();
}

void nav_parent_vs_value_inst_t::_read() {
    m_s1 = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(124, false, true, true), std::string("UTF-8"));
    m_child = std::unique_ptr<child_obj_t>(new child_obj_t(m__io, this, m__root));
}

nav_parent_vs_value_inst_t::~nav_parent_vs_value_inst_t() {
}

nav_parent_vs_value_inst_t::child_obj_t::child_obj_t(kaitai::kstream* p__io, nav_parent_vs_value_inst_t* p__parent, nav_parent_vs_value_inst_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_do_something = false;
    _read();
}

void nav_parent_vs_value_inst_t::child_obj_t::_read() {
}

nav_parent_vs_value_inst_t::child_obj_t::~child_obj_t() {
}

bool nav_parent_vs_value_inst_t::child_obj_t::do_something() {
    if (f_do_something)
        return m_do_something;
    m_do_something = ((_parent()->s1() == (std::string("foo"))) ? (true) : (false));
    f_do_something = true;
    return m_do_something;
}
