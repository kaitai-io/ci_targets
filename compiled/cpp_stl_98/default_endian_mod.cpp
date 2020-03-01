// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_endian_mod.h"

defaultEndianMod_t::defaultEndianMod_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, defaultEndianMod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_main = 0;
    _read();
}

void defaultEndianMod_t::_read() {
    m_main = new mainObj_t(m__io, this, m__root);
}

defaultEndianMod_t::~defaultEndianMod_t() {
    delete m_main;
}

defaultEndianMod_t::mainObj_t::mainObj_t(kaitai::kstream* p__io, defaultEndianMod_t* p__parent, defaultEndianMod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_nest = 0;
    m_nest_be = 0;
    _read();
}

void defaultEndianMod_t::mainObj_t::_read() {
    m_one = m__io->read_s4le();
    m_nest = new subnest_t(m__io, this, m__root);
    m_nest_be = new subnestBe_t(m__io, this, m__root);
}

defaultEndianMod_t::mainObj_t::~mainObj_t() {
    delete m_nest;
    delete m_nest_be;
}

defaultEndianMod_t::mainObj_t::subnest_t::subnest_t(kaitai::kstream* p__io, defaultEndianMod_t::mainObj_t* p__parent, defaultEndianMod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void defaultEndianMod_t::mainObj_t::subnest_t::_read() {
    m_two = m__io->read_s4le();
}

defaultEndianMod_t::mainObj_t::subnest_t::~subnest_t() {
}

defaultEndianMod_t::mainObj_t::subnestBe_t::subnestBe_t(kaitai::kstream* p__io, defaultEndianMod_t::mainObj_t* p__parent, defaultEndianMod_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void defaultEndianMod_t::mainObj_t::subnestBe_t::_read() {
    m_two = m__io->read_s4be();
}

defaultEndianMod_t::mainObj_t::subnestBe_t::~subnestBe_t() {
}
