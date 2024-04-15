// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "params_pass_bool.h"

params_pass_bool_t::params_pass_bool_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, params_pass_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_seq_b1 = 0;
    m_seq_bool = 0;
    m_literal_b1 = 0;
    m_literal_bool = 0;
    m_inst_b1 = 0;
    m_inst_bool = 0;
    f_v_false = false;
    f_v_true = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void params_pass_bool_t::_read() {
    m_s_false = m__io->read_bits_int_be(1);
    m_s_true = m__io->read_bits_int_be(1);
    m__io->align_to_byte();
    m_seq_b1 = new param_type_b1_t(s_true(), m__io, this, m__root);
    m_seq_bool = new param_type_bool_t(s_false(), m__io, this, m__root);
    m_literal_b1 = new param_type_b1_t(false, m__io, this, m__root);
    m_literal_bool = new param_type_bool_t(true, m__io, this, m__root);
    m_inst_b1 = new param_type_b1_t(v_true(), m__io, this, m__root);
    m_inst_bool = new param_type_bool_t(v_false(), m__io, this, m__root);
}

params_pass_bool_t::~params_pass_bool_t() {
    _clean_up();
}

void params_pass_bool_t::_clean_up() {
    if (m_seq_b1) {
        delete m_seq_b1; m_seq_b1 = 0;
    }
    if (m_seq_bool) {
        delete m_seq_bool; m_seq_bool = 0;
    }
    if (m_literal_b1) {
        delete m_literal_b1; m_literal_b1 = 0;
    }
    if (m_literal_bool) {
        delete m_literal_bool; m_literal_bool = 0;
    }
    if (m_inst_b1) {
        delete m_inst_b1; m_inst_b1 = 0;
    }
    if (m_inst_bool) {
        delete m_inst_bool; m_inst_bool = 0;
    }
}

params_pass_bool_t::param_type_b1_t::param_type_b1_t(bool p_arg, kaitai::kstream* p__io, params_pass_bool_t* p__parent, params_pass_bool_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_arg = p_arg;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_v_false = false;
    f_v_false = true;
    return m_v_false;
}

bool params_pass_bool_t::v_true() {
    if (f_v_true)
        return m_v_true;
    m_v_true = true;
    f_v_true = true;
    return m_v_true;
}
