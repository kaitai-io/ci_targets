// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{

    /// <summary>
    /// Another one-liner
    /// </summary>
    /// <remarks>
    /// Reference: <a href="http://www.example.com/some/path/?even_with=query&amp;more=2">Source</a>
    /// </remarks>
    public partial class DocstringsDocref : KaitaiStruct
    {
        public static DocstringsDocref FromFile(string fileName)
        {
            return new DocstringsDocref(new KaitaiStream(fileName));
        }

        public DocstringsDocref(KaitaiStream io, KaitaiStruct parent = null, DocstringsDocref root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_foo = false;
            f_parseInst = false;
            _one = m_io.ReadU1();
            _two = m_io.ReadU1();
            _three = m_io.ReadU1();
        }
        private bool f_foo;
        private bool _foo;

        /// <remarks>
        /// Reference: Doc ref for instance, a plain one
        /// </remarks>
        public bool Foo
        {
            get
            {
                if (f_foo)
                    return _foo;
                _foo = (bool) (true);
                f_foo = true;
                return _foo;
            }
        }
        private bool f_parseInst;
        private byte _parseInst;

        /// <remarks>
        /// Reference: Now this is a really
        /// long document ref that
        /// spans multiple lines.
        /// </remarks>
        public byte ParseInst
        {
            get
            {
                if (f_parseInst)
                    return _parseInst;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _parseInst = m_io.ReadU1();
                m_io.Seek(_pos);
                f_parseInst = true;
                return _parseInst;
            }
        }
        private byte _one;
        private byte _two;
        private byte _three;
        private DocstringsDocref m_root;
        private KaitaiStruct m_parent;

        /// <remarks>
        /// Reference: Plain text description of doc ref, page 42
        /// </remarks>
        public byte One { get { return _one; } }

        /// <summary>
        /// Both doc and doc-ref are defined
        /// </summary>
        /// <remarks>
        /// Reference: <a href="http://www.example.com/with/url/again">Source</a>
        /// </remarks>
        public byte Two { get { return _two; } }

        /// <remarks>
        /// Reference: <a href="http://www.example.com/three">Documentation name</a>
        /// </remarks>
        public byte Three { get { return _three; } }
        public DocstringsDocref M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
