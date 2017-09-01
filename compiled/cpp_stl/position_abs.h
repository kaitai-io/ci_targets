#ifndef POSITION_ABS_H_
#define POSITION_ABS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <kaitai/kaitaistruct.h>
#include <kaitai/kaitaistream.h>

#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 7000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.7 or later is required"
#endif

class position_abs_t : public kaitai::kstruct {

public:
    class index_obj_t;

    position_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, position_abs_t* p__root = 0);

private:
    void _read();

public:
    ~position_abs_t();

    class index_obj_t : public kaitai::kstruct {

    public:

        index_obj_t(kaitai::kstream* p__io, position_abs_t* p__parent = 0, position_abs_t* p__root = 0);

    private:
        void _read();

    public:
        ~index_obj_t();

    private:
        std::string m_entry;
        position_abs_t* m__root;
        position_abs_t* m__parent;

    public:
        std::string entry() const { return m_entry; }
        position_abs_t* _root() const { return m__root; }
        position_abs_t* _parent() const { return m__parent; }
    };

private:
    bool f_index;
    index_obj_t* m_index;

public:
    index_obj_t* index();

private:
    uint32_t m_index_offset;
    position_abs_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t index_offset() const { return m_index_offset; }
    position_abs_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // POSITION_ABS_H_
