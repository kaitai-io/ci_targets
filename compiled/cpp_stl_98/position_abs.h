#ifndef POSITION_ABS_H_
#define POSITION_ABS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class positionAbs_t : public kaitai::kstruct {

public:
    class indexObj_t;

    positionAbs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, positionAbs_t* p__root = 0);

private:
    void _read();

public:
    ~positionAbs_t();

    class indexObj_t : public kaitai::kstruct {

    public:

        indexObj_t(kaitai::kstream* p__io, positionAbs_t* p__parent = 0, positionAbs_t* p__root = 0);

    private:
        void _read();

    public:
        ~indexObj_t();

    private:
        std::string m_entry;
        positionAbs_t* m__root;
        positionAbs_t* m__parent;

    public:
        std::string entry() const { return m_entry; }
        positionAbs_t* _root() const { return m__root; }
        positionAbs_t* _parent() const { return m__parent; }
    };

private:
    bool f_index;
    indexObj_t* m_index;

public:
    indexObj_t* index();

private:
    uint32_t m_index_offset;
    positionAbs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t index_offset() const { return m_index_offset; }
    positionAbs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // POSITION_ABS_H_
