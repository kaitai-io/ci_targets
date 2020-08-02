#ifndef ZLIB_SURROUNDED_H_
#define ZLIB_SURROUNDED_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class zlib_surrounded_t : public kaitai::kstruct {

public:
    class inflated_t;

    zlib_surrounded_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, zlib_surrounded_t* p__root = 0);

private:
    void _read();

public:
    ~zlib_surrounded_t();
    void _cleanUp();

    class inflated_t : public kaitai::kstruct {

    public:

        inflated_t(kaitai::kstream* p__io, zlib_surrounded_t* p__parent = 0, zlib_surrounded_t* p__root = 0);

    private:
        void _read();

    public:
        ~inflated_t();
        void _cleanUp();

    private:
        int32_t m_num;
        zlib_surrounded_t* m__root;
        zlib_surrounded_t* m__parent;

    public:
        int32_t num() const { return m_num; }
        zlib_surrounded_t* _root() const { return m__root; }
        zlib_surrounded_t* _parent() const { return m__parent; }
    };

private:
    std::string m_pre;
    inflated_t* m_zlib;
    std::string m_post;
    zlib_surrounded_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_zlib;
    kaitai::kstream* m__io__raw_zlib;
    std::string m__raw__raw_zlib;

public:
    std::string pre() const { return m_pre; }
    inflated_t* zlib() const { return m_zlib; }
    std::string post() const { return m_post; }
    zlib_surrounded_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_zlib() const { return m__raw_zlib; }
    kaitai::kstream* _io__raw_zlib() const { return m__io__raw_zlib; }
    std::string _raw__raw_zlib() const { return m__raw__raw_zlib; }
};

#endif  // ZLIB_SURROUNDED_H_
