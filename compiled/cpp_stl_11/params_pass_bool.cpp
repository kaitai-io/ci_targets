// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_bool.h"

params_pass_bool_t::params_pass_bool_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_seq_b1 = nullptr;
    m_seq_bool = nullptr;
    m_literal_b1 = nullptr;
    m_literal_bool = nullptr;
    m_inst_b1 = nullptr;
    m_inst_bool = nullptr;
    f_v_false = false;
    f_v_true = false;
    _read();
}

void params_pass_bool_t::_read() {
    m_s_false = m__io->read_bits_int_be(1);
    m_s_true = m__io->read_bits_int_be(1);
    m__io->align_to_byte();
    m_seq_b1 = std::unique_ptr<param_type_b1_t>(new param_type_b1_t(s_true(), m__io, this, m__root));
    m_seq_bool = std::unique_ptr<param_type_bool_t>(new param_type_bool_t(s_false(), m__io, this, m__root));
    m_literal_b1 = std::unique_ptr<param_type_b1_t>(new param_type_b1_t(false, m__io, this, m__root));
    m_literal_bool = std::unique_ptr<param_type_bool_t>(new param_type_bool_t(true, m__io, this, m__root));
    m_inst_b1 = std::unique_ptr<param_type_b1_t>(new param_type_b1_t(v_true(), m__io, this, m__root));
    m_inst_bool = std::unique_ptr<param_type_bool_t>(new param_type_bool_t(v_false(), m__io, this, m__root));
}

params_pass_bool_t::~params_pass_bool_t() {
    _clean_up();
}

void params_pass_bool_t::_clean_up() {
}

params_pass_bool_t::param_type_b1_t::param_type_b1_t(bool p_arg, kaitai::kstream* p__io, params_pass_bool_t* p__parent, params_pass_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg = p_arg;
    _read();
}

void params_pass_bool_t::param_type_b1_t::_read() {
    m_foo = m__io->read_bytes(((arg()) ? (1) : (2)));
}

params_pass_bool_t::param_type_b1_t::~param_type_b1_t() {
    _clean_up();
}

void params_pass_bool_t::param_type_b1_t::_clean_up() {
}

params_pass_bool_t::param_type_bool_t::param_type_bool_t(bool p_arg, kaitai::kstream* p__io, params_pass_bool_t* p__parent, params_pass_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg = p_arg;
    _read();
}

void params_pass_bool_t::param_type_bool_t::_read() {
    m_foo = m__io->read_bytes(((arg()) ? (1) : (2)));
}

params_pass_bool_t::param_type_bool_t::~param_type_bool_t() {
    _clean_up();
}

void params_pass_bool_t::param_type_bool_t::_clean_up() {
}

bool params_pass_bool_t::v_false() {
    if (f_v_false)
        return m_v_false;
    f_v_false = true;
    m_v_false = false;
    return m_v_false;
}

bool params_pass_bool_t::v_true() {
    if (f_v_true)
        return m_v_true;
    f_v_true = true;
    m_v_true = true;
    return m_v_true;
}
