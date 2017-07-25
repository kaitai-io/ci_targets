// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "fixed_struct.h"



fixed_struct_t::fixed_struct_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, fixed_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    f_hdr = false;
    _read();
}

void fixed_struct_t::_read() {
}

fixed_struct_t::~fixed_struct_t() {
    if (f_hdr) {
        // hdr: UserTypeInstream(List(header),None), isArray=false, hasRaw=false, hasIO=false
        delete m_hdr;
    }
}

fixed_struct_t::header_t::header_t(kaitai::kstream *p_io, fixed_struct_t* p_parent, fixed_struct_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void fixed_struct_t::header_t::_read() {
    m_magic1 = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x31", 6));
    m_uint8 = m__io->read_u1();
    m_sint8 = m__io->read_s1();
    m_magic_uint = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", 10));
    m_uint16 = m__io->read_u2le();
    m_uint32 = m__io->read_u4le();
    m_uint64 = m__io->read_u8le();
    m_magic_sint = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", 10));
    m_sint16 = m__io->read_s2le();
    m_sint32 = m__io->read_s4le();
    m_sint64 = m__io->read_s8le();
    m_magic_uint_le = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", 9));
    m_uint16le = m__io->read_u2le();
    m_uint32le = m__io->read_u4le();
    m_uint64le = m__io->read_u8le();
    m_magic_sint_le = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", 9));
    m_sint16le = m__io->read_s2le();
    m_sint32le = m__io->read_s4le();
    m_sint64le = m__io->read_s8le();
    m_magic_uint_be = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", 9));
    m_uint16be = m__io->read_u2be();
    m_uint32be = m__io->read_u4be();
    m_uint64be = m__io->read_u8be();
    m_magic_sint_be = m__io->ensure_fixed_contents(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", 9));
    m_sint16be = m__io->read_s2be();
    m_sint32be = m__io->read_s4be();
    m_sint64be = m__io->read_s8be();
}

fixed_struct_t::header_t::~header_t() {
    // magic1: FixedBytesType([B@1c9f0a20,None), isArray=false, hasRaw=false, hasIO=false
    // uint8: Int1Type(false), isArray=false, hasRaw=false, hasIO=false
    // sint8: Int1Type(true), isArray=false, hasRaw=false, hasIO=false
    // magic_uint: FixedBytesType([B@55787112,None), isArray=false, hasRaw=false, hasIO=false
    // uint16: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint32: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint64: IntMultiType(false,Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // magic_sint: FixedBytesType([B@1cd201a8,None), isArray=false, hasRaw=false, hasIO=false
    // sint16: IntMultiType(true,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint32: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint64: IntMultiType(true,Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // magic_uint_le: FixedBytesType([B@7db82169,None), isArray=false, hasRaw=false, hasIO=false
    // uint16le: IntMultiType(false,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint32le: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint64le: IntMultiType(false,Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // magic_sint_le: FixedBytesType([B@1992eaf4,None), isArray=false, hasRaw=false, hasIO=false
    // sint16le: IntMultiType(true,Width2,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint32le: IntMultiType(true,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint64le: IntMultiType(true,Width8,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // magic_uint_be: FixedBytesType([B@f74e835,None), isArray=false, hasRaw=false, hasIO=false
    // uint16be: IntMultiType(false,Width2,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint32be: IntMultiType(false,Width4,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // uint64be: IntMultiType(false,Width8,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // magic_sint_be: FixedBytesType([B@3276732,None), isArray=false, hasRaw=false, hasIO=false
    // sint16be: IntMultiType(true,Width2,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint32be: IntMultiType(true,Width4,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
    // sint64be: IntMultiType(true,Width8,Some(BigEndian)), isArray=false, hasRaw=false, hasIO=false
}

fixed_struct_t::header_t* fixed_struct_t::hdr() {
    if (f_hdr)
        return m_hdr;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_hdr = new header_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_hdr = true;
    return m_hdr;
}
