// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "cast_to_imported.h"

#include <memory>
#include "hello_world.h"

cast_to_imported_t::cast_to_imported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, cast_to_imported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = nullptr;
    f_one_casted = false;
    _read();
}

void cast_to_imported_t::_read() {
    m_one = std::unique_ptr<hello_world_t>(new hello_world_t(m__io));
}

cast_to_imported_t::~cast_to_imported_t() {
}

hello_world_t* cast_to_imported_t::one_casted() {
    if (f_one_casted)
        return m_one_casted;
    m_one_casted = static_cast<hello_world_t*>(one());
    f_one_casted = true;
    return m_one_casted;
}
