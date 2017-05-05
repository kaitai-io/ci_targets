#ifndef PROCESS_ROTATE_H_
#define PROCESS_ROTATE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class process_rotate_t : public kaitai::kstruct {

public:

    process_rotate_t(kaitai::kstream* p_io, kaitai::kstruct* p_parent = 0, process_rotate_t* p_root = 0);
    ~process_rotate_t();

private:
    std::string m_buf1;
    std::string m_buf2;
    uint8_t m_key;
    std::string m_buf3;
    process_rotate_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf1;
    std::string m__raw_buf2;
    std::string m__raw_buf3;

public:
    std::string buf1() const { return m_buf1; }
    std::string buf2() const { return m_buf2; }
    uint8_t key() const { return m_key; }
    std::string buf3() const { return m_buf3; }
    process_rotate_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf1() const { return m__raw_buf1; }
    std::string _raw_buf2() const { return m__raw_buf2; }
    std::string _raw_buf3() const { return m__raw_buf3; }
};

#endif  // PROCESS_ROTATE_H_
