// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{

    /// <summary>
    /// One-liner description of a type.
    /// </summary>
    public partial class Docstrings : KaitaiStruct
    {
        public static Docstrings FromFile(string fileName)
        {
            return new Docstrings(new KaitaiStream(fileName));
        }

        public Docstrings(KaitaiStream io, KaitaiStruct parent = null, Docstrings root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_two = false;
            f_three = false;
            _one = m_io.ReadU1();
        }

        /// <summary>
        /// This subtype is never used, yet has a very long description
        /// that spans multiple lines. It should be formatted accordingly,
        /// even in languages that have single-line comments for
        /// docstrings. Actually, there's even a MarkDown-style list here
        /// with several bullets:
        /// 
        /// * one
        /// * two
        /// * three
        /// 
        /// And the text continues after that. Here's a MarkDown-style link:
        /// [woohoo](http://example.com) - one day it will be supported as
        /// well.
        /// </summary>
        public partial class ComplexSubtype : KaitaiStruct
        {
            public static ComplexSubtype FromFile(string fileName)
            {
                return new ComplexSubtype(new KaitaiStream(fileName));
            }

            public ComplexSubtype(KaitaiStream io, KaitaiStruct parent = null, Docstrings root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
            }
            private Docstrings m_root;
            private KaitaiStruct m_parent;
            public Docstrings M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private bool f_two;
        private byte _two;

        /// <summary>
        /// Another description for parse instance &quot;two&quot;
        /// </summary>
        public byte Two
        {
            get
            {
                if (f_two)
                    return _two;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _two = m_io.ReadU1();
                m_io.Seek(_pos);
                f_two = true;
                return _two;
            }
        }
        private bool f_three;
        private sbyte _three;

        /// <summary>
        /// And yet another one for value instance &quot;three&quot;
        /// </summary>
        public sbyte Three
        {
            get
            {
                if (f_three)
                    return _three;
                _three = (sbyte) (66);
                f_three = true;
                return _three;
            }
        }
        private byte _one;
        private Docstrings m_root;
        private KaitaiStruct m_parent;

        /// <summary>
        /// A pretty verbose description for sequence attribute &quot;one&quot;
        /// </summary>
        public byte One { get { return _one; } }
        public Docstrings M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
