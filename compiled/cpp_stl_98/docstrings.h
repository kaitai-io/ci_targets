#ifndef DOCSTRINGS_H_
#define DOCSTRINGS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class docstrings_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

/**
 * One-liner description of a type.
 */

class docstrings_t : public kaitai::kstruct {

public:
    class complex_subtype_t;

    docstrings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, docstrings_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~docstrings_t();

    /**
     * This subtype is never used, yet has a very long description
     * that spans multiple lines. It should be formatted accordingly,
     * even in languages that have single-line comments for
     * docstrings. Actually, there's even a MarkDown-style list here
     * with several bullets:
     * 
     * * one
     * * two
     * * three
     * 
     * And the text continues after that. Here's a MarkDown-style link:
     * [woohoo](http://example.com) - one day it will be supported as
     * well.
     */

    class complex_subtype_t : public kaitai::kstruct {

    public:

        complex_subtype_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, docstrings_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~complex_subtype_t();
        docstrings_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }

    private:
        docstrings_t* m__root;
        kaitai::kstruct* m__parent;
    };

public:

    /**
     * And yet another one for value instance "three"
     */
    int8_t three();

    /**
     * Another description for parse instance "two"
     */
    uint8_t two();

    /**
     * A pretty verbose description for sequence attribute "one"
     */
    uint8_t one() const { return m_one; }
    docstrings_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    bool f_three;
    int8_t m_three;
    bool f_two;
    uint8_t m_two;
    uint8_t m_one;
    docstrings_t* m__root;
    kaitai::kstruct* m__parent;
};

#endif  // DOCSTRINGS_H_
