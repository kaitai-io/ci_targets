#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class debugArrayUser_t : public kaitai::kstruct {

public:
    class cat_t;

    debugArrayUser_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, debugArrayUser_t* p__root = nullptr);
    void _read();
    ~debugArrayUser_t();

    class cat_t : public kaitai::kstruct {

    public:

        cat_t(kaitai::kstream* p__io, debugArrayUser_t* p__parent = nullptr, debugArrayUser_t* p__root = nullptr);
        void _read();
        ~cat_t();

    private:
        uint8_t m_meow;
        debugArrayUser_t* m__root;
        debugArrayUser_t* m__parent;

    public:
        uint8_t meow() const { return m_meow; }
        debugArrayUser_t* _root() const { return m__root; }
        debugArrayUser_t* _parent() const { return m__parent; }
    };

private:
    std::unique_ptr<cat_t> m_one_cat;
    std::unique_ptr<std::vector<std::unique_ptr<cat_t>>> m_array_of_cats;
    debugArrayUser_t* m__root;
    kaitai::kstruct* m__parent;

public:
    cat_t* one_cat() const { return m_one_cat.get(); }
    std::vector<std::unique_ptr<cat_t>>* array_of_cats() const { return m_array_of_cats.get(); }
    debugArrayUser_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
