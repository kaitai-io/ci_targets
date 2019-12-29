// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "js_signed_right_shift.h"

js_signed_right_shift_t::js_signed_right_shift_t(kaitai::kstream* p__io, std::unique_ptr<kaitai::kstruct> p__parent, js_signed_right_shift_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_should_be_40000000 = false;
    f_should_be_a00000 = false;
    _read();
}

void js_signed_right_shift_t::_read() {
}

js_signed_right_shift_t::~js_signed_right_shift_t() {
}

int32_t js_signed_right_shift_t::should_be_40000000() {
    if (f_should_be_40000000)
        return m_should_be_40000000;
    m_should_be_40000000 = (2147483648UL >> 1);
    f_should_be_40000000 = true;
    return m_should_be_40000000;
}

int32_t js_signed_right_shift_t::should_be_a00000() {
    if (f_should_be_a00000)
        return m_should_be_a00000;
    m_should_be_a00000 = (2684354560UL >> 8);
    f_should_be_a00000 = true;
    return m_should_be_a00000;
}
