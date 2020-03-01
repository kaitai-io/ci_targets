// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "cast_to_imported.h"
#include "hello_world.h"

castToImported_t::castToImported_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, castToImported_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_one = 0;
    f_one_casted = false;
    _read();
}

void castToImported_t::_read() {
    m_one = new helloWorld_t(m__io);
}

castToImported_t::~castToImported_t() {
    delete m_one;
}

helloWorld_t* castToImported_t::one_casted() {
    if (f_one_casted)
        return m_one_casted;
    m_one_casted = static_cast<helloWorld_t*>(one());
    f_one_casted = true;
    return m_one_casted;
}
