// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_expr.h"
#include "kaitai/exceptions.h"

valid_fail_expr_t::valid_fail_expr_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_expr_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_fail_expr_t::_read() {
    m_foo = m__io->read_u1();
    {
        uint8_t _ = foo();
        if (!(_ == 1)) {
            throw kaitai::validation_expr_error<uint8_t>(foo(), _io(), std::string("/seq/0"));
        }
    }
    m_bar = m__io->read_s2le();
    {
        int16_t _ = bar();
        if (!( ((_ < -190) || (_ > -190)) )) {
            throw kaitai::validation_expr_error<int16_t>(bar(), _io(), std::string("/seq/1"));
        }
    }
}

valid_fail_expr_t::~valid_fail_expr_t() {
    _clean_up();
}

void valid_fail_expr_t::_clean_up() {
}
