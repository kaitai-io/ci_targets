// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_in_sized.h"

instance_in_sized_t::instance_in_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_in_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_cont = nullptr;
    m__io__raw_cont = nullptr;
    _read();
}

void instance_in_sized_t::_read() {
    m__raw_cont = m__io->read_bytes(16);
    m__io__raw_cont = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_cont));
    m_cont = std::unique_ptr<wrapper_t>(new wrapper_t(m__io__raw_cont.get(), this, m__root));
}

instance_in_sized_t::~instance_in_sized_t() {
    _clean_up();
}

void instance_in_sized_t::_clean_up() {
}

instance_in_sized_t::bar_t::bar_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent, instance_in_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_inst = false;
    _read();
}

void instance_in_sized_t::bar_t::_read() {
    m_seq_f = m__io->read_u1();
}

instance_in_sized_t::bar_t::~bar_t() {
    _clean_up();
}

void instance_in_sized_t::bar_t::_clean_up() {
    if (f_inst) {
    }
}

std::string instance_in_sized_t::bar_t::inst() {
    if (f_inst)
        return m_inst;
    f_inst = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(4 + 1);
    m_inst = m__io->read_bytes(3);
    m__io->seek(_pos);
    return m_inst;
}

instance_in_sized_t::baz_t::baz_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent, instance_in_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_inst = false;
    _read();
}

void instance_in_sized_t::baz_t::_read() {
    m_seq_f = m__io->read_u1();
}

instance_in_sized_t::baz_t::~baz_t() {
    _clean_up();
}

void instance_in_sized_t::baz_t::_clean_up() {
    if (f_inst) {
    }
}

std::string instance_in_sized_t::baz_t::inst() {
    if (f_inst)
        return m_inst;
    f_inst = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(8 + 1);
    m_inst = m__io->read_bytes(3);
    m__io->seek(_pos);
    return m_inst;
}

instance_in_sized_t::qux_t::qux_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent, instance_in_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_inst_invoked = false;
    f_inst_unused_by_seq = false;
    _read();
}

void instance_in_sized_t::qux_t::_read() {
    n_seq_f = true;
    if (inst_invoked() > 0) {
        n_seq_f = false;
        m_seq_f = m__io->read_u1();
    }
}

instance_in_sized_t::qux_t::~qux_t() {
    _clean_up();
}

void instance_in_sized_t::qux_t::_clean_up() {
    if (!n_seq_f) {
    }
    if (f_inst_invoked) {
    }
    if (f_inst_unused_by_seq) {
    }
}

uint8_t instance_in_sized_t::qux_t::inst_invoked() {
    if (f_inst_invoked)
        return m_inst_invoked;
    f_inst_invoked = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 1);
    m_inst_invoked = m__io->read_u1();
    m__io->seek(_pos);
    return m_inst_invoked;
}

std::string instance_in_sized_t::qux_t::inst_unused_by_seq() {
    if (f_inst_unused_by_seq)
        return m_inst_unused_by_seq;
    f_inst_unused_by_seq = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 1);
    m_inst_unused_by_seq = m__io->read_bytes(2);
    m__io->seek(_pos);
    return m_inst_unused_by_seq;
}

instance_in_sized_t::wrapper_t::wrapper_t(kaitai::kstream* p__io, instance_in_sized_t* p__parent, instance_in_sized_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_seq_sized = nullptr;
    m__io__raw_seq_sized = nullptr;
    m_seq_in_stream = nullptr;
    m_inst_in_stream = nullptr;
    m_inst_sized = nullptr;
    m__io__raw_inst_sized = nullptr;
    f_inst_in_stream = false;
    f_inst_sized = false;
    _read();
}

void instance_in_sized_t::wrapper_t::_read() {
    m__raw_seq_sized = m__io->read_bytes(4);
    m__io__raw_seq_sized = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_seq_sized));
    m_seq_sized = std::unique_ptr<qux_t>(new qux_t(m__io__raw_seq_sized.get(), this, m__root));
    m_seq_in_stream = std::unique_ptr<bar_t>(new bar_t(m__io, this, m__root));
}

instance_in_sized_t::wrapper_t::~wrapper_t() {
    _clean_up();
}

void instance_in_sized_t::wrapper_t::_clean_up() {
    if (f_inst_in_stream) {
    }
    if (f_inst_sized) {
    }
}

instance_in_sized_t::baz_t* instance_in_sized_t::wrapper_t::inst_in_stream() {
    if (f_inst_in_stream)
        return m_inst_in_stream.get();
    f_inst_in_stream = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 3);
    m_inst_in_stream = std::unique_ptr<baz_t>(new baz_t(m__io, this, m__root));
    m__io->seek(_pos);
    return m_inst_in_stream.get();
}

instance_in_sized_t::qux_t* instance_in_sized_t::wrapper_t::inst_sized() {
    if (f_inst_sized)
        return m_inst_sized.get();
    f_inst_sized = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->pos() + 7);
    m__raw_inst_sized = m__io->read_bytes(4);
    m__io__raw_inst_sized = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_inst_sized));
    m_inst_sized = std::unique_ptr<qux_t>(new qux_t(m__io__raw_inst_sized.get(), this, m__root));
    m__io->seek(_pos);
    return m_inst_sized.get();
}
