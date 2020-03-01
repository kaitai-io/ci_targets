// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_bits.h"
#include "kaitai/exceptions.h"

exprBits_t::exprBits_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprBits_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_repeat_expr = nullptr;
    m_switch_on_endian = nullptr;
    f_enum_inst = false;
    f_inst_pos = false;
    _read();
}

void exprBits_t::_read() {
    m_enum_seq = static_cast<exprBits_t::items_t>(m__io->read_bits_int(2));
    m_a = m__io->read_bits_int(3);
    m__io->align_to_byte();
    m_byte_size = m__io->read_bytes(a());
    int l_repeat_expr = a();
    m_repeat_expr = std::unique_ptr<std::vector<int8_t>>(new std::vector<int8_t>());
    m_repeat_expr->reserve(l_repeat_expr);
    for (int i = 0; i < l_repeat_expr; i++) {
        m_repeat_expr->push_back(std::move(m__io->read_s1()));
    }
    n_switch_on_type = true;
    switch (a()) {
    case 2: {
        n_switch_on_type = false;
        m_switch_on_type = m__io->read_s1();
        break;
    }
    }
    m_switch_on_endian = std::unique_ptr<endianSwitch_t>(new endianSwitch_t(m__io, this, m__root));
}

exprBits_t::~exprBits_t() {
    if (!n_switch_on_type) {
    }
    if (f_inst_pos) {
    }
}

exprBits_t::endianSwitch_t::endianSwitch_t(kaitai::kstream* p__io, exprBits_t* p__parent, exprBits_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;
    _read();
}

void exprBits_t::endianSwitch_t::_read() {
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

void exprBits_t::endianSwitch_t::_read_le() {
    m_foo = m__io->read_s2le();
}

void exprBits_t::endianSwitch_t::_read_be() {
    m_foo = m__io->read_s2be();
}

exprBits_t::endianSwitch_t::~endianSwitch_t() {
}

exprBits_t::items_t exprBits_t::enum_inst() {
    if (f_enum_inst)
        return m_enum_inst;
    m_enum_inst = static_cast<exprBits_t::items_t>(a());
    f_enum_inst = true;
    return m_enum_inst;
}

int8_t exprBits_t::inst_pos() {
    if (f_inst_pos)
        return m_inst_pos;
    std::streampos _pos = m__io->pos();
    m__io->seek(a());
    m_inst_pos = m__io->read_s1();
    m__io->seek(_pos);
    f_inst_pos = true;
    return m_inst_pos;
}
