// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



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

        public Docstrings(KaitaiStream p__io, KaitaiStruct p__parent = null, Docstrings p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_three = false;
            f_two = false;
            _read();
        }
        private void _read()
        {
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

            public ComplexSubtype(KaitaiStream p__io, KaitaiStruct p__parent = null, Docstrings p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            private Docstrings m_root;
            private KaitaiStruct m_parent;
            public Docstrings M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
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
                f_three = true;
                _three = (sbyte) (66);
                return _three;
            }
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
                f_two = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _two = m_io.ReadU1();
                m_io.Seek(_pos);
                return _two;
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
