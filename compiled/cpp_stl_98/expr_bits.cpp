// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "expr_bits.h"
#include "kaitai/exceptions.h"
std::set<expr_bits_t::items_t> expr_bits_t::_build_values_items_t() {
    std::set<expr_bits_t::items_t> _t;
    _t.insert(expr_bits_t::ITEMS_FOO);
    _t.insert(expr_bits_t::ITEMS_BAR);
    return _t;
}
const std::set<expr_bits_t::items_t> expr_bits_t::_values_items_t = expr_bits_t::_build_values_items_t();
bool expr_bits_t::_is_defined_items_t(expr_bits_t::items_t v) {
    return expr_bits_t::_values_items_t.find(v) != expr_bits_t::_values_items_t.end();
}

expr_bits_t::expr_bits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_bits_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_repeat_expr = 0;
    m_switch_on_endian = 0;
    f_enum_inst = false;
    f_inst_pos = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_bits_t::_read() {
    m_enum_seq = static_cast<expr_bits_t::items_t>(m__io->read_bits_int_be(2));
    m_a = m__io->read_bits_int_be(3);
    m_byte_size = m__io->read_bytes(a());
    m_repeat_expr = new std::vector<int8_t>();
    const int l_repeat_expr = a();
    for (int i = 0; i < l_repeat_expr; i++) {
        m_repeat_expr->push_back(m__io->read_s1());
    }
    n_switch_on_type = true;
    switch (a()) {
    case 2: {
        n_switch_on_type = false;
        m_switch_on_type = m__io->read_s1();
        break;
    }
    }
    m_switch_on_endian = new endian_switch_t(m__io, this, m__root);
}

expr_bits_t::~expr_bits_t() {
    _clean_up();
}

void expr_bits_t::_clean_up() {
    if (m_repeat_expr) {
        delete m_repeat_expr; m_repeat_expr = 0;
    }
    if (!n_switch_on_type) {
    }
    if (m_switch_on_endian) {
        delete m_switch_on_endian; m_switch_on_endian = 0;
    }
    if (f_inst_pos) {
    }
}

expr_bits_t::endian_switch_t::endian_switch_t(kaitai::kstream* p__io, expr_bits_t* p__parent, expr_bits_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void expr_bits_t::endian_switch_t::_read() {
    switch (_parent()->a()) {
    case 1: {
        m__is_le = true;
        break;
    }
    case 2: {
        m__is_le = false;
        break;
    }
    }

    if (m__is_le == -1) {
        throw kaitai::undecided_endianness_error("/types/endian_switch");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void expr_bits_t::endian_switch_t::_read_le() {
    m_foo = m__io->read_s2le();
}

void expr_bits_t::endian_switch_t::_read_be() {
    m_foo = m__io->read_s2be();
}

expr_bits_t::endian_switch_t::~endian_switch_t() {
    _clean_up();
}

void expr_bits_t::endian_switch_t::_clean_up() {
}

expr_bits_t::items_t expr_bits_t::enum_inst() {
    if (f_enum_inst)
        return m_enum_inst;
    f_enum_inst = true;
    m_enum_inst = static_cast<expr_bits_t::items_t>(a());
    return m_enum_inst;
}

int8_t expr_bits_t::inst_pos() {
    if (f_inst_pos)
        return m_inst_pos;
    f_inst_pos = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(a());
    m_inst_pos = m__io->read_s1();
    m__io->seek(_pos);
    return m_inst_pos;
}
