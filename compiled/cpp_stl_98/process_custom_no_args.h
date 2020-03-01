#ifndef PROCESS_CUSTOM_NO_ARGS_H_
#define PROCESS_CUSTOM_NO_ARGS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class processCustomNoArgs_t : public kaitai::kstruct {

public:

    processCustomNoArgs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, processCustomNoArgs_t* p__root = 0);

private:
    void _read();

public:
    ~processCustomNoArgs_t();

private:
    std::string m_buf;
    processCustomNoArgs_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_buf;
    kaitai::kstream* m__io_buf;

public:
    std::string buf() const { return m_buf; }
    processCustomNoArgs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_buf() const { return m__raw_buf; }
    kaitai::kstream* _io_buf() const { return m__io_buf; }
};

#endif  // PROCESS_CUSTOM_NO_ARGS_H_
