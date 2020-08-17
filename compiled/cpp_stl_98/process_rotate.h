#ifndef PROCESS_ROTATE_H_
#define PROCESS_ROTATE_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class process_rotate_t : public kaitai::kstruct {

public:

    process_rotate_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, process_rotate_t* p__root = 0);

private:
    void _read();

public:

private:
    void _clean_up();

public:
    ~process_rotate_t();

private:
    std::string m_buf1;
    std::string m_buf2;
    uint8_t m_key;
    std::string m_buf3;
    process_rotate_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf1;
    kaitai::kstream* m__io_buf1;
    std::string m__raw_buf2;
    kaitai::kstream* m__io_buf2;
    std::string m__raw_buf3;
    kaitai::kstream* m__io_buf3;

public:
    std::string buf1() const { return m_buf1; }
    std::string buf2() const { return m_buf2; }
    uint8_t key() const { return m_key; }
    std::string buf3() const { return m_buf3; }
    process_rotate_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf1() const { return m__raw_buf1; }
    kaitai::kstream* _io_buf1() const { return m__io_buf1; }
    std::string _raw_buf2() const { return m__raw_buf2; }
    kaitai::kstream* _io_buf2() const { return m__io_buf2; }
    std::string _raw_buf3() const { return m__raw_buf3; }
    kaitai::kstream* _io_buf3() const { return m__io_buf3; }
};

#endif  // PROCESS_ROTATE_H_
